//
//  Account_Page.swift
//  Meesho
//
//  Created by Choudhary Dipika on 10/05/23.
//

import UIKit

class Account_Page: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var tableView1ImgArray = ["lang", "bank", "share", "share", "payment", "spin", "shop", "hat", "supplier", "setting", "rate", "policies", "logout"]
    var tableView1Array = ["Change langauge", "My Bank & UPI Details", "My Shared Products", "My Viewed Products", "My Payments", "Spins", "My Followed Shops", "Entrepreneur Learning Centre", "Become a Supplier", "Settings", "Rate Meesho", "Legal and Polices", "Logout"]
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var cameraImg: UIImageView!
    @IBOutlet weak var cameraButtonOutlet: UIButton!
    @IBOutlet weak var helpImg: UIImageView!
    @IBOutlet weak var tableView1: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        helpImg.image = UIImage(named: "help")
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        cameraImg.layer.cornerRadius = cameraImg.frame.height/2
        cameraButtonOutlet.layer.cornerRadius = cameraButtonOutlet.frame.height/2
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        profileImage.image = info[.editedImage] as! UIImage
        dismiss(animated: true)
    }
    
    @IBAction func cameraButtonAction(_ sender: UIButton) {
        let alert = UIAlertController.init(title: "", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: "Camera", style: .default))
        alert.addAction(UIAlertAction.init(title: "Gallery", style: .default, handler: { alert in
            
            let img = UIImagePickerController()
            img.delegate = self
            img.sourceType = .photoLibrary
            img.allowsEditing = true
            self.present(img, animated: true)
        }))
        present(alert, animated: true)
    }
    
    @IBAction func cartButton(_ sender: UIButton) {
        let navigateToHelpCentre = storyboard?.instantiateViewController(withIdentifier:  "CartPage") as! CartPage
        navigationController?.pushViewController(navigateToHelpCentre, animated: true)
    }
    
    
    @IBAction func helpCentreButtonAction(_ sender: UIButton) {
        let navigateToHelpCentre = storyboard?.instantiateViewController(withIdentifier:  "Help_Centre") as! Help_Centre
        navigationController?.pushViewController(navigateToHelpCentre, animated: true)
    }
    
}

// MARK = Table View

extension Account_Page:  UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableView1Array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let accountTVCell = tableView1.dequeueReusableCell(withIdentifier: "AccountTVCell", for: indexPath) as! AccountTableViewCell1
        accountTVCell.label.text = tableView1Array[indexPath.row]
        accountTVCell.tableView1Img.image = UIImage(named: tableView1ImgArray[indexPath.row])
        return accountTVCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 67
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "ChangeLanguage") as! ChangeLanguage
           present(navigate, animated: true)
        }
        else if indexPath.row == 1
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "Bank_Upi") as! Bank_Upi
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 2 || indexPath.row == 3
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "MyProducts") as! MyProducts
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 4
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "MyPayement") as! MyPayement
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 5
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "Spins") as! Spins
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 6
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "MyFollowedShops") as! MyFollowedShops
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 7
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "EntrepreneurLearningCentre") as! EntrepreneurLearningCentre
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 8
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "Supplier") as! Supplier
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 9
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "Setting") as! Setting
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 10
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "RateMeesho") as! RateMeesho
            navigationController?.pushViewController(navigate, animated: true)
        }
        else if indexPath.row == 11
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "Legal_Policies") as! Legal_Policies
            navigationController?.pushViewController(navigate, animated: true)
        }
        else
        {
            let navigate = storyboard?.instantiateViewController(withIdentifier: "Logout") as! Logout
           present(navigate, animated: true)
        }
    }
}
