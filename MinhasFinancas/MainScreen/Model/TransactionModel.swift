//
//  TransactionModel.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 22/06/22.
//

import Foundation

enum Type: String {
    case income = "entrada"
    case outcome = "saida"
}

enum Category: String {
    case health = "heart.circle.fill"
    case food = "cart.circle.fill"
    case transport = "car.circle.fill"
    case salary = "brazilianrealsign.circle.fill"
    case entreteniment = "bag.circle.fill"
    case common = "barcode"
    case other = "gift.circle.fill"
}

struct TransactionModel {
    let type: Type
    let value: Double
    let description: String
    let date: Date
    let category: Category
}
