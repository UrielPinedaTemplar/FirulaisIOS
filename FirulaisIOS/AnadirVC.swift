//
//  AnadirVC.swift
//  FirulaisIOS
//
//  Created by Uriel Pineda on 02/12/19.
//  Copyright © 2019 Uriel Pineda. All rights reserved.
//

import UIKit

class AnadirVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backFromModal(_ segue: UIStoryboardSegue) {
        print("and we are back")
        // Switch to the second tab (tabs are numbered 0, 1, 2)
        self.tabBarController?.selectedIndex = 1
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
