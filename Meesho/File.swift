//
//  File.swift
//  Meesho
//
//  Created by Choudhary Dipika on 13/04/23.
//

import Foundation
import UIKit

class buttonSetup:UIButton {
    
    required init?(coder coder: NSCoder) {
        super.init(coder: coder)
        setLangOutlet()
    }
    
    func setLangOutlet()
    {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.cornerRadius = 10
    }
}

