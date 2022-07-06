//
//  Bindable.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 22/06/22.
//

import UIKit

class Bindable<T> {
    var value: T? {
        didSet {
            self.listener?(value)
        }
    }
    
    init(_ value: T?) {
        self.value = value
    }
    
    private var listener: ((T?) -> ())?
    
    func bind(_ listener: @escaping (T?) -> ()) {
        listener(self.value)
        self.listener = listener
    }
}
