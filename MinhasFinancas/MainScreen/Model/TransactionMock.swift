//
//  TransactionMock.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 04/07/22.
//

import Foundation


extension TransactionModel {
    
    static let supermercado: Self = .init(type: .outcome,
                                          value: 104.49,
                                          description: "Compras no mercado",
                                          date: Formatter.ddMMyyyy.date(from: "04/01/2022") ?? Date(),
                                          category: .food)
    
    static let salario: Self = .init(type: .income,
                                          value: 3000.00,
                                          description: "Salario janeiro",
                                          date: Formatter.ddMMyyyy.date(from: "04/01/2022") ?? Date(),
                                          category: .salary)
    
    static let supermercado2: Self = .init(type: .outcome,
                                          value: 14.49,
                                          description: "Compras no mercado",
                                          date: Formatter.ddMMyyyy.date(from: "05/01/2022") ?? Date(),
                                          category: .food)
    
    static let supermercado3: Self = .init(type: .outcome,
                                          value: 44.29,
                                          description: "Compras no mercado",
                                          date: Formatter.ddMMyyyy.date(from: "07/01/2022") ?? Date(),
                                          category: .food)
    
    static let academia: Self = .init(type: .outcome,
                                          value: 94.90,
                                          description: "Crossfit",
                                          date: Formatter.ddMMyyyy.date(from: "19/01/2022") ?? Date(),
                                          category: .health)
    
    static let netflix: Self = .init(type: .outcome,
                                          value: 26.50,
                                          description: "Netflix duas telas",
                                          date: Formatter.ddMMyyyy.date(from: "04/01/2022") ?? Date(),
                                          category: .entreteniment)
    
    static let agua: Self = .init(type: .outcome,
                                          value: 83.12,
                                          description: "Sabesp",
                                          date: Formatter.ddMMyyyy.date(from: "") ?? Date(),
                                          category: .common)
    
    static let gasolina: Self = .init(type: .outcome,
                                          value: 100.00,
                                          description: "Gasolina",
                                          date: Formatter.ddMMyyyy.date(from: "") ?? Date(),
                                          category: .transport)
    
}


extension TransactionModel {
    static let mocks: [Self] = [.supermercado,
                                .salario,
                                .netflix,
                                .academia,
                                .supermercado3,
                                .agua,
                                .supermercado2,
                                .gasolina]
}
