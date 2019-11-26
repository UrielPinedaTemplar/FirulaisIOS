//
//  ViewController.swift
//  FirulaisIOS
//
//  Created by Uriel Pineda on 24/11/19.
//  Copyright © 2019 Uriel Pineda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    
    

    @IBAction func loginButton(_ sender: Any) {
        
        performSegue(withIdentifier: "userMainSegue", sender: self)
    }
    
    @IBAction func registerButton(_ sender: Any) {
        performSegue(withIdentifier: "showRegister", sender: self)
    }
    
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

