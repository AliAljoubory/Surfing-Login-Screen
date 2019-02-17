//
//  SecondViewController.swift
//  Surfing Login Screen
//
//  Created by Ali Aljoubory on 31/01/2019.
//  Copyright © 2019 Ali Aljoubory. All rights reserved.
//

import UIKit
import RealmSwift

class SecondViewController: UIViewController {
    
    @IBOutlet var nameTextfield: UITextField!
    @IBOutlet var surfLocationTextfield: UITextField!
    
    let data = SurfingData()
    
    @IBAction func saveSurfingData(_ sender: CustomButton) {
        
        data.name = nameTextfield.text!
        data.surfingLocation = surfLocationTextfield.text!
        
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(data)
            }
            print("Data saved successfully!")
            print(Realm.Configuration.defaultConfiguration.fileURL!)
        } catch {
            print("Error: \(error)")
        }
    }
    
    @IBAction func surfBackButtonPressed(_ sender: CustomButton) {
        performSegue(withIdentifier: "backToVC", sender: self)
    }
    
}
