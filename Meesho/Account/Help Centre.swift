//
//  Help Centre.swift
//  Meesho
//
//  Created by Choudhary Dipika on 22/05/23.
//

import UIKit

class Help_Centre: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func backButtonAction(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
}
