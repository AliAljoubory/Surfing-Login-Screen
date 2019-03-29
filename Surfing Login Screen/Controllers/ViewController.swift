//
//  ViewController.swift
//  Surfing Login Screen
//
//  Created by Ali Aljoubory on 31/01/2019.
//  Copyright © 2019 Ali Aljoubory. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet var usernameTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func surfLoginButtonPressed(_ sender: CustomButton) {
        loginUser()
    }
    
    @IBAction func newUserButtonPressed(_ sender: CustomButton) {
        performSegue(withIdentifier: "newUserVC", sender: self)
    }
    
    func loginUser() {
        Auth.auth().signIn(withEmail: usernameTextfield.text!, password: passwordTextfield.text!) { (authResult, error) in
            if error != nil {
                print(error!)
            } else {
                print("User login successful!")
                
                self.performSegue(withIdentifier: "secondVC", sender: self)
            }
        }
    }
    
}

