//
//  CartPage.swift
//  Meesho
//
//  Created by Choudhary Dipika on 06/07/23.
//

import UIKit

class CartPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
