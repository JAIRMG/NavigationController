//
//  NavigationControllerOne.swift
//  NavigationControllerExample
//
//  Created by Jair Moreno Gaspar on 22/10/18.
//  Copyright © 2018 Jair Moreno Gaspar. All rights reserved.
//

import UIKit

class NavigationControllerOne: UIViewController {
    
    let logout: UIButton = UIButton()
    let segundo: UIButton = UIButton()
    let tercero: UIButton = UIButton()
    let cuarto: UIButton = UIButton()
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        logout.frame = CGRect(x: self.view.frame.width * 0.2, y: self.view.frame.height * 0.2, width: self.view.frame.width * 0.6, height: self.view.frame.height * 0.1)
        logout.backgroundColor = UIColor.blue
        logout.setTitle("Logout", for: .normal)
        logout.setTitleColor(UIColor.white, for: .normal)
        logout.addTarget(self, action: #selector(self.logoutVC), for: .touchUpInside)
        
        
        segundo.frame = CGRect(x: self.view.frame.width * 0.2, y: self.view.frame.height * 0.4, width: self.view.frame.width * 0.6, height: self.view.frame.height * 0.1)
        segundo.backgroundColor = UIColor.red
        segundo.setTitle("Segundo", for: .normal)
        segundo.setTitleColor(UIColor.white, for: .normal)
        segundo.addTarget(self, action: #selector(self.secondVC), for: .touchUpInside)
        
        tercero.frame = CGRect(x: self.view.frame.width * 0.2, y: self.view.frame.height * 0.6, width: self.view.frame.width * 0.6, height: self.view.frame.height * 0.1)
        tercero.backgroundColor = UIColor.red
        tercero.setTitle("Tercero", for: .normal)
        tercero.setTitleColor(UIColor.white, for: .normal)
        tercero.addTarget(self, action: #selector(self.thirdVC), for: .touchUpInside)
        
        cuarto.frame = CGRect(x: self.view.frame.width * 0.2, y: self.view.frame.height * 0.8, width: self.view.frame.width * 0.6, height: self.view.frame.height * 0.1)
        cuarto.backgroundColor = UIColor.red
        cuarto.setTitle("Cuarto", for: .normal)
        cuarto.setTitleColor(UIColor.white, for: .normal)
        cuarto.addTarget(self, action: #selector(self.fourthVC), for: .touchUpInside)
        
        
        user?.nombre
        
        self.title = "Uno"
        self.view.addSubview(logout)
        self.view.addSubview(segundo)
        self.view.addSubview(tercero)
        self.view.addSubview(cuarto)
    }
    
    
    @objc func logoutVC() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func secondVC(){
        let vcDos = NavigationControllerTwo()
        self.navigationController?.pushViewController(vcDos, animated: true)
    }
    
    @objc func thirdVC(){
        let vcTres = NavigationControllerThree()
        self.navigationController?.pushViewController(vcTres, animated: true)
    }
    
    @objc func fourthVC(){
        let vcCuatro = NavigationControllerFour()
        self.navigationController?.pushViewController(vcCuatro, animated: true)
        self.navigationController?.viewControllers = [self, NavigationControllerTwo(),NavigationControllerThree(),NavigationControllerFour()]
    }
    
    
    
}
