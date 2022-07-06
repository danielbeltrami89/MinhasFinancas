//
//  MainViewController.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 22/06/22.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var screen: MainViewControllerScreen = {
        var view = MainViewControllerScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let viewModel: MainViewModel
    
    init(viewModel: MainViewModel ) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        self.setupBinders()
        
        self.viewModel.getTransacions()
        
        self.screen.tableView.delegate = self
        self.screen.tableView.dataSource = self
        
        self.screen.delegate = self
    }
    
    func setupBinders() {
        self.viewModel.transations.bind { [weak self] _ in
            DispatchQueue.main.async {
                self?.screen.tableView.reloadData()
            }
        }
    }
    
    func addAItem() {
        self.viewModel.addItem(TransactionModel(type: .income,
                                                value: 500,
                                                description: "Hora extra",
                                                date: Formatter.ddMMyyyy.date(from: "29/01/2022") ?? Date(),
                                                category: .salary))
    }
    
    func addConstraints() {
        self.view.addSubview(screen)
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: self.view.topAnchor),
            screen.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            screen.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            screen.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        ])
    }
}

extension MainViewController: MainViewControllerScreenDelegate {
    func plusDidPressed() {
        self.addAItem()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.transations.value?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TransactionTableViewCell.identifier, for: indexPath) as? TransactionTableViewCell else { return UITableViewCell() }
        
        guard let item = viewModel.transations.value?[indexPath.row] else { return UITableViewCell() }
        cell.setupCell(item.type,
                       title: item.description,
                       value: item.value,
                       date: item.date,
                       icon: item.category)
        
        return cell
    }
    
}

