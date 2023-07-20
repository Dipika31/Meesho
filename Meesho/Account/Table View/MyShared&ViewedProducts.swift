//
//  MyShared&ViewedProducts.swift
//  Meesho
//
//  Created by Choudhary Dipika on 01/07/23.
//

import UIKit

class MyProducts: UIViewController {

    @IBOutlet weak var segmentController1: UISegmentedControl!
    override func viewDidLoad() {
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
