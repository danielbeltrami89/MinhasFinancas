//
//  TransactionTableViewCell.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 05/07/22.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {
    
    static let identifier = "TransactionTableViewCell"
    
    lazy var cell: TransactionTableViewCellScreen = {
        var cell = TransactionTableViewCellScreen()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setupCell(_ inOut: Type, title: String, value: Double, date: Date, icon: Category) {
        cell.setupCell(inOut, title: title, value: value, date: date, icon: icon)
    }
    
    func addConstraints() {
        self.addSubview(cell)
        NSLayoutConstraint.activate([
            cell.topAnchor.constraint(equalTo: self.topAnchor, constant: 1),
            cell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 2),
            cell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -2),
            cell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1),
        ])
    }
}
