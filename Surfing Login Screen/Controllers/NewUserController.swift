//
//  NewUserController.swift
//  Surfing Login Screen
//
//  Created by Ali Aljoubory on 07/02/2019.
//  Copyright © 2019 Ali Aljoubory. All rights reserved.
//

import UIKit
import Firebase

class NewUserController: UIViewController {
    
    @IBOutlet var usernameTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    @IBAction func surfLoginButtonPressed(_ sender: CustomButton) {
        createUser()
    }
    
    func createUser() {
        Auth.auth().createUser(withEmail: usernameTextfield.text!, password: passwordTextfield.text!) { (authResult, error) in
            if error != nil {
                print(error!)
            } else {
                print("User creation successful!")
                
                self.performSegue(withIdentifier: "secondVC", sender: self)
            }
        }
    }
    
}
