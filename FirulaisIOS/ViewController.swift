//
//  ViewController.swift
//  FirulaisIOS
//
//  Created by Uriel Pineda on 24/11/19.
//  Copyright © 2019 Uriel Pineda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
   
    
    
    

    @IBAction func loginButton(_ sender: Any) {
        let alert = UIAlertController(title: "Some fields are missing" , message: "You must fill all your information to continue", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        if (tf1.text?.count == 0) || (tf2.text?.count == 0) {
            self.present(alert, animated: true)
        } else {
            
            performSegue(withIdentifier: "userMainSegue", sender: self)
        }
        
        
    }
    
    @IBAction func registerButton(_ sender: Any) {
        let alert = UIAlertController(title: "Some fields are missing" , message: "You must fill all your information to continue", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        if (tf1.text?.count == 0) || (tf2.text?.count == 0) {
            
            self.present(alert, animated: true)
        } else {
            performSegue(withIdentifier: "showRegister", sender: self)
        }
        
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
           if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
               if self.view.frame.origin.y == 0 {
                   self.view.frame.origin.y -= keyboardSize.height
               }
           }
       }

       @objc func keyboardWillHide(notification: NSNotification) {
           if self.view.frame.origin.y != 0 {
               self.view.frame.origin.y = 0
           }
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

