//
//  CustomButton.swift
//  Surfing Login Screen
//
//  Created by Ali Aljoubory on 31/01/2019.
//  Copyright © 2019 Ali Aljoubory. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()
    }

    private func setUpButton() {
        layer.cornerRadius = frame.size.height / 2
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1
    }
    
}
