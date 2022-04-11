//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Ceboolion on 11/04/2022.
//

import UIKit

enum Event {
    case firtsVC
    case secondVC
    case thirdVC
}

protocol Coordinator {
    
    var navigationController: UINavigationController? { get set }
    func eventOccured(with event: Event)
    func start()
    
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
