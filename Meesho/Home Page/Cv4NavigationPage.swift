//
//  Cv4NavigationPage.swift
//  Meesho
//
//  Created by Choudhary Dipika on 03/07/23.
//

import UIKit

class Cv4NavigationPage: UIViewController {
    
    var img = UIImage()
    var desc = String()
    var price = String()
    var offer = String()
    
    @IBOutlet weak var cv4Img: UIImageView!
    @IBOutlet weak var cv4Desc: UILabel!
    @IBOutlet weak var cv4Price: UILabel!
    @IBOutlet weak var cv4offer: UILabel!
    @IBOutlet weak var freeDelivery: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cv4Img.image = img
        cv4Desc.text = desc
        cv4Price.text = price
        cv4offer.text = offer
      //freeDelivery.text = "Free Delivery"
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func wishlistButton(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "MyProducts") as! MyProducts
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func cartButton(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "CartPage") as! CartPage
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
}
