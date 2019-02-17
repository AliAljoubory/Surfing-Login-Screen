//
//  SecondViewController.swift
//  Surfing Login Screen
//
//  Created by Ali Aljoubory on 31/01/2019.
//  Copyright © 2019 Ali Aljoubory. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var nameTextfield: UITextField!
    @IBOutlet var surfLocationTextfield: UITextField!
    
    @IBAction func surfBackButtonPressed(_ sender: CustomButton) {
        performSegue(withIdentifier: "backToVC", sender: self)
    }
}
