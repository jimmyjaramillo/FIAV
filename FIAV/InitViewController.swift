//
//  ViewController.swift
//  FIAV
//
//  Created by Jimmy on 9/24/18.
//  Copyright © 2018 GOGO. All rights reserved.
//

import UIKit

class InitViewController: UIViewController {

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

