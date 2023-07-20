//
//  Change Number.swift
//  Meesho
//
//  Created by Choudhary Dipika on 22/04/23.
//

import UIKit

class Change_Number: UIViewController {

    @IBOutlet weak var popView: UIView!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var verifyButton: UIButton!
    var num = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.alpha = 0
        popView.layer.cornerRadius = 10
        verifyButton.layer.cornerRadius = 3
        numberLabel.text = num
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
    
    @IBAction func verifyButtonAction(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "Home_Page") as! Home_Page
        //present(navigate, animated: false)
    }
    
    
}
