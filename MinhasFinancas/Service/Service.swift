//
//  Service.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 04/07/22.
//

import Foundation


public class Service {
    
    func getTransactions(completion: @escaping([TransactionModel]) -> Void) {
        
        completion(TransactionModel.mocks)
        
    }
    
}
