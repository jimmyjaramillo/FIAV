//
//  HomeViewController.swift
//  FIAV
//
//  Created by Jimmy Jaramillo on 9/26/18.
//  Copyright © 2018 GOGO. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
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
