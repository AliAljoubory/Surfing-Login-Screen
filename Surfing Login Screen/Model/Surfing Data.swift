//
//  Surfing Data.swift
//  Surfing Login Screen
//
//  Created by Ali Aljoubory on 17/02/2019.
//  Copyright © 2019 Ali Aljoubory. All rights reserved.
//

import Foundation
import RealmSwift

class SurfingData: Object {
    
    @objc dynamic var name: String = ""
    @objc dynamic var surfingLocation: String = ""
    
}
