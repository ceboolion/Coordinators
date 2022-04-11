//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Ceboolion on 11/04/2022.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
        
        setButton()
    }
    
    func setButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.setTitle("Second VC", for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = button.bounds.height / 2
        button.center = view.center
        button.addTarget(self, action: #selector(didTappedButton), for: .primaryActionTriggered)
    }

    @objc func didTappedButton() {
        coordinator?.eventOccured(with: .secondVC)
    }

}

