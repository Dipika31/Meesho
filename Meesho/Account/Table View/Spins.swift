//
//  Spins.swift
//  Meesho
//
//  Created by Choudhary Dipika on 04/07/23.
//

import UIKit

class Spins: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
