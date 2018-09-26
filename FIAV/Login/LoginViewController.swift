//
//  LoginViewController.swift
//  FIAV
//
//  Created by Jimmy on 9/26/18.
//  Copyright © 2018 GOGO. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var emailUser: UITextField!
    @IBOutlet var passwordUser: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emailUser.delegate =  self
        emailUser.returnKeyType = .done
        passwordUser.delegate = self
        passwordUser.returnKeyType = .done
        #if DEV
        print("si")
        #else
        print("no")
        #endif
    }
    
    
    // Dismiss the keyboard when the user taps the "Return" key or its equivalent
    // while editing a text field.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    @IBAction func loginAction(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailUser.text!, password: passwordUser.text!, completion: { (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        })
    }
    
}
