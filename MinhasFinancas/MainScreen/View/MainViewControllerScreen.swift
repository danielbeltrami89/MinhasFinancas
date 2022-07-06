//
//  MainViewControllerScreen.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 29/06/22.
//

import Foundation
import UIKit

protocol MainViewControllerScreenDelegate {
    func plusDidPressed()
}

class MainViewControllerScreen: UIView {
    
    lazy var tableView: UITableView = {
        var table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .clear
        table.separatorStyle = .none
        table.register(TransactionTableViewCell.self,
                       forCellReuseIdentifier: TransactionTableViewCell.identifier)
        return table
    }()
    
    lazy private var plusButton: UIButton = {
        var button = UIButton()
        button.setTitle("+", for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(plusDidPressed), for: .touchUpInside)
        return button
    }()
    
    
    lazy private var teste: TransactionTableViewCellScreen = {
        var button = TransactionTableViewCellScreen()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var delegate: MainViewControllerScreenDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addButtonConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addButtonConstraints() {
        
        self.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        self.addSubview(plusButton)
        NSLayoutConstraint.activate([
            plusButton.widthAnchor.constraint(equalToConstant: 40),
            plusButton.heightAnchor.constraint(equalToConstant: 40),
            plusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            plusButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
        
    }
    
    @objc func plusDidPressed() {
        delegate?.plusDidPressed()
    }
}
