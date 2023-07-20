//
//  ViewController.swift
//  Meesho
//
//  Created by Choudhary Dipika on 11/04/23.
//

import UIKit

class MainLanguagePage: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationItem.hidesBackButton = true
    }

    @IBAction func languageButtonAction(_ sender: Any) {
        navigateToHomePage()
    }
    

    @IBAction func skipButton(_ sender: UIButton) {
        navigateToHomePage()
    }
    
    func navigateToHomePage()
    {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "TabBarMainPage") as! TabBarMainPage
        navigationController?.pushViewController(navigate, animated: true)
    }
}

