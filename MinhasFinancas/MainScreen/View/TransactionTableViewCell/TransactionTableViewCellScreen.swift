//
//  TransactionTableViewCellScreen.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 05/07/22.
//

import UIKit

class TransactionTableViewCellScreen: UIView {
    
    lazy var cardView: UIView = {
        var card = UIView()
        card.setCardStyle()
        card.backgroundColor = .white
        card.translatesAutoresizingMaskIntoConstraints = false
        return card
    }()
    
    lazy var labelTagView: UIView = {
        var card = UIView()
        card.setCardStyle()
        card.backgroundColor = .lightGray
        card.translatesAutoresizingMaskIntoConstraints = false
        return card
    }()
    
    lazy var labelTag: UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var labelDescription: UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var labelCost: UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var labelDate: UILabel = {
        var label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 14.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var iconImage: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupCell(_ inOut: Type, title: String, value: Double, date: Date, icon: Category) {
        labelTag.text = inOut.rawValue
        labelDescription.text = title
        labelCost.text = "R$ \(String(value))"
        labelDate.text = Formatter.ddMMyyyy.string(for: date)
        iconImage.image = UIImage(systemName: icon.rawValue)
    }
    
    func addViews() {
        self.addSubview(cardView)
        cardView.addSubview(labelTagView)
        labelTagView.addSubview(labelTag)
        cardView.addSubview(labelDescription)
        cardView.addSubview(labelCost)
        cardView.addSubview(labelDate)
        cardView.addSubview(iconImage)
    }
    
    func addConstraints() {
        
        //card
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            cardView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),
            cardView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4),
            cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4)
        ])
        
        //tagview
        NSLayoutConstraint.activate([
            labelTagView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 8),
            labelTagView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 8),
            labelTagView.widthAnchor.constraint(equalToConstant: 80),
            labelTagView.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        //tag
        NSLayoutConstraint.activate([
            labelTag.centerYAnchor.constraint(equalTo: labelTagView.centerYAnchor),
            labelTag.centerXAnchor.constraint(equalTo: labelTagView.centerXAnchor),
            labelTag.widthAnchor.constraint(equalTo: labelTagView.widthAnchor),
            labelTag.heightAnchor.constraint(equalTo: labelTagView.heightAnchor)
        ])
        
        //icon
        NSLayoutConstraint.activate([
            iconImage.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 8),
            iconImage.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -8),
            iconImage.widthAnchor.constraint(equalToConstant: 40),
            iconImage.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        //description
        NSLayoutConstraint.activate([
            labelDescription.topAnchor.constraint(equalTo: labelTagView.bottomAnchor, constant: 4),
            labelDescription.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 8),
            labelDescription.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -8),
            labelDescription.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        //price
        NSLayoutConstraint.activate([
            labelCost.topAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 4),
            labelCost.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 8),
            labelCost.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -8),
            labelCost.heightAnchor.constraint(equalToConstant: 16)
        ])
        
        //date
        NSLayoutConstraint.activate([
            labelDate.topAnchor.constraint(equalTo: labelCost.bottomAnchor, constant: 4),
            labelDate.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 8),
            labelDate.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -8),
            labelDate.heightAnchor.constraint(equalToConstant: 16),
            labelDate.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -8)
        ])
        
    }
    
}
