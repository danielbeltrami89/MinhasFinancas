//
//  MainCoordinator.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 29/06/22.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        let viewModel = MainViewModel(coordinator: self)
        let vc = MainViewController(viewModel: viewModel)
        vc.title = "Minhas Finanças"
        self.navigationController.pushViewController(vc, animated: true)
    }
    
}
