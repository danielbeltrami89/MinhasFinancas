//
//  Date+Extensions.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 04/07/22.
//

import Foundation

extension Formatter {
    
    static let ddMMyyyy: DateFormatter = {
         let formatter = DateFormatter()
         formatter.dateFormat = "dd-MM-yyyy"
         return formatter
     }()
    
}
