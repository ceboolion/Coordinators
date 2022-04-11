//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Ceboolion on 11/04/2022.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func eventOccured(with event: Event) {
        switch event {
        case .firtsVC:
            var firstVC: UIViewController & Coordinating = ViewController()
            firstVC.coordinator = self
            navigationController?.pushViewController(firstVC, animated: true)
        case .secondVC:
            var secondVC: UIViewController & Coordinating = SecondViewController()
            secondVC.coordinator = self
            navigationController?.pushViewController(secondVC, animated: true)
        case .thirdVC:
            var thirdVC: UIViewController & Coordinating = ThirdVC()
            thirdVC.coordinator = self
            navigationController?.pushViewController(thirdVC, animated: true)
        }
        
    }
    
    func start() {
        let vc: ViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
