//
//  ChangeLanguage.swift
//  Meesho
//
//  Created by Choudhary Dipika on 04/07/23.
//

import UIKit

class ChangeLanguage: UIViewController {

    @IBOutlet weak var popView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        popView.layer.cornerRadius = 10
    }
    
    @IBAction func skipButton(_ sender: UIButton) {
        dismiss(animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear)
        {
            self.view.alpha = 1
        }
    }
}
