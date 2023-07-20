//
//  otpSentPage.swift
//  Meesho
//
//  Created by Choudhary Dipika on 22/04/23.
//

import UIKit

class otpSentPage: UIViewController {

    @IBOutlet weak var popView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.alpha = 0
        popView.layer.cornerRadius = 10
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear)
        {
            self.view.alpha = 1
        }
        
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: false)
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "Change_Number") as! Change_Number
        present(navigate, animated: false)
    }
}
