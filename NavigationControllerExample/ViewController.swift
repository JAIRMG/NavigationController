//
//  ViewController.swift
//  NavigationControllerExample
//
//  Created by Jair Moreno Gaspar on 22/10/18.
//  Copyright © 2018 Jair Moreno Gaspar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let botonAvanzar: UIButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        
        botonAvanzar.frame = CGRect(x: self.view.frame.width * 0.2, y: self.view.frame.height * 0.4, width: self.view.frame.width * 0.6, height: self.view.frame.height * 0.1)
        botonAvanzar.backgroundColor = UIColor.blue
        botonAvanzar.setTitle("Iniciar", for: .normal)
        botonAvanzar.setTitleColor(UIColor.white, for: .normal)
        botonAvanzar.addTarget(self, action: #selector(self.login), for: .touchUpInside)
        
        self.view.addSubview(botonAvanzar)
        
        
    }
    
    @objc func login() {
        let vc = NavigationControllerOne()
        let nc = UINavigationController(rootViewController: vc)
        nc.modalTransitionStyle = .flipHorizontal
        present(nc, animated: true, completion: nil)
        
    }




}

