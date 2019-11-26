//
//  RegisterVC.swift
//  FirulaisIOS
//
//  Created by Uriel Pineda on 25/11/19.
//  Copyright © 2019 Uriel Pineda. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerSuccesfull(_ sender: Any) {
        performSegue(withIdentifier: "registerSuccessful", sender: self)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
