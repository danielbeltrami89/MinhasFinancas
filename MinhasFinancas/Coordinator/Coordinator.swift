//
//  Coordinator.swift
//  MinhasFinancas
//
//  Created by Daniel Beltrami on 29/06/22.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
