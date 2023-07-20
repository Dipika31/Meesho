//
//  OrderSetButton.swift
//  Meesho
//
//  Created by Choudhary Dipika on 20/06/23.
//

import Foundation
import UIKit

class orderbuttonSetup:UIButton {
    
    required init?(coder coder: NSCoder) {
        super.init(coder: coder)
        setButtonOutlet()
    }
    
    func setButtonOutlet()
    {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
    }
}

