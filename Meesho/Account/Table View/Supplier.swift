//
//  Supplier.swift
//  Meesho
//
//  Created by Choudhary Dipika on 23/05/23.
//

import UIKit

class Supplier: UIViewController {

    @IBOutlet weak var startSellingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setStartButton()
    }
    
    func setStartButton() {
        startSellingButton.layer.masksToBounds = true
        startSellingButton.layer.cornerRadius = 5
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
