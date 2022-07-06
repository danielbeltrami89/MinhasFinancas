//
//  UIView+Extensions.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 05/07/22.
//

import UIKit

extension UIView {
    
    func setCardStyle() {
        self.layer.cornerRadius = 8
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 0.25
        self.layer.shadowColor = UIColor(red: 122, green: 109, blue: 96, alpha: 1).cgColor
    }
}
