//
//  ForgotPasswordViewController.swift
//  FIAV
//
//  Created by Jimmy on 9/26/18.
//  Copyright © 2018 GOGO. All rights reserved.
//

import UIKit
import Firebase

class ForgotPasswordViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailUser: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emailUser.delegate =  self
        emailUser.returnKeyType = .done
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
    
    @IBAction func recoveryPassword(_ sender: Any) {
        Auth.auth().sendPasswordReset(withEmail: emailUser.text!, completion: {(error) in
            if error == nil{
                let alertController = UIAlertController(title: "Info", message: "We just sent an email to your email address please check it!", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                self.performSegue(withIdentifier: "goToInit", sender: self)
            }else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        })
    }
    
}
