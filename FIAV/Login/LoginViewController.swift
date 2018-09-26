//
//  LoginViewController.swift
//  FIAV
//
//  Created by Jimmy on 9/26/18.
//  Copyright © 2018 GOGO. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var emailUser: UITextField!
    @IBOutlet var passwordUser: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        #if DEV
        print("si")
        #else
        print("no")
        #endif
    }
    
    
}
