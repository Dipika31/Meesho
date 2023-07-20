//
//  SignUp page.swift
//  Meesho
//
//  Created by Choudhary Dipika on 20/04/23.
//

import UIKit

class SignUp_page: UIViewController {
    
    @IBOutlet weak var popupView: UIView!
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var continueButtonOutlet: UIButton!
        //var phone =  UserDefaults.standard.integer(forKey: "phone")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.alpha = 0
        popupView.layer.cornerRadius = 10
        continueButtonOutlet.layer.masksToBounds = true
        continueButtonOutlet.layer.cornerRadius = 3
       // phone = numberTextField.text?.description
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let abc = segue.destination as! Change_Number
        //abc.num = phone
        abc.num = numberTextField.text!
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear)
        {
            self.view.alpha = 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear)
        {
            self.view.alpha = 0
        }
    }
    
   @IBAction func cancelSignUpButton(_ sender: UIButton) {
       dismiss(animated: false, completion: nil)
    }
    
    
    @IBAction func continuiButton(_ sender: UIButton) {
//        if numberTextField.text?.count == 10
//        {
        
            let navigate = storyboard?.instantiateViewController(withIdentifier: "otpSentPage") as! otpSentPage
            present(navigate, animated: false)

//        UserDefaults.standard.set(self.numberTextField.text!, forKey: "numberTextField")
//        self.performSegue(withIdentifier: "cell", sender: self)
       // }
    }
}
