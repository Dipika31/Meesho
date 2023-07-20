//
//  Legal&Policies.swift
//  Meesho
//
//  Created by Choudhary Dipika on 23/05/23.
//

import UIKit

class Legal_Policies: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    var array = ["Open Source Licenses", "Terms and Conditions", "Privacy Policy", "Anti Phishing Alert", "Intellectual Property Policy", "Returns, Refunds and Replacement Policy", "Cancellation Policy", "Meesho Superstore-Terms of Use",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LegalCell", for: indexPath) as! LegalTVCell
        cell.legalLabel.text = array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
