//
//  MainViewModel.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 22/06/22.
//

import Foundation

class MainViewModel {
    var transations: Bindable<[TransactionModel]> = Bindable([])
    
    private let coordinator: MainCoordinator
    private let service = Service()
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
    }
    
    func getTransacions() {
        self.service.getTransactions { [weak self] transactions in
            self?.transations.value = transactions
        }
    }
    
    func addItem(_ item: TransactionModel) {
        self.transations.value?.append(item)
    }
}
