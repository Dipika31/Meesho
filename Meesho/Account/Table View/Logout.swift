//
//  Logout.swift
//  Meesho
//
//  Created by Choudhary Dipika on 04/07/23.
//

import UIKit

class Logout: UIViewController {

    @IBOutlet weak var popView: UIView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
    }
    
    func setButton() {
        view.alpha = 0
        popView.layer.cornerRadius = 10
        cancelButton.layer.borderColor = UIColor.black.cgColor
        cancelButton.layer.borderWidth = 1
        cancelButton.layer.masksToBounds = true
        cancelButton.layer.cornerRadius = 4
        logoutButton.layer.cornerRadius = 4
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear)
        {
            self.view.alpha = 1
        }
    }
    
    @IBAction func cancelButtonAction(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
}


