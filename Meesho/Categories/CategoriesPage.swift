//
//  CategoriesPage.swift
//  Meesho
//
//  Created by Choudhary Dipika on 10/05/23.
//

import UIKit

class CategoriesPage: UIViewController{
    
    var tableView1Array = ["Popular", "Kurti, Saree & Lehenga", "Women Western", "Men", "Kids", "Home & Kitchen", "Beauty & Health", "Jewellery & Accessories", "Bags & Footwear", "Electronic", "Sports & Fitness", "Car & Motorbike", "Office Supplies & ...", "Food & Drinks", "Books", "Pet Supplies", "Musical Instruments" ]
    
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cartButton(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "CartPage") as! CartPage
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func wishlistButton(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "MyProducts") as! MyProducts
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}


// MARK = Table View

extension CategoriesPage : UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableView1{
            return tableView1Array.count
        }
        else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableView2
        {
            if indexPath.row == 0
            {
                var tableView2Cell1 = tableView2.dequeueReusableCell(withIdentifier: "Tb2Cell1Identifier", for: indexPath) as!  Tb2Cell1File
                tableView2Cell1.tb2Cell1Label1.text = "POPULAR"
                tableView2Cell1.tb2Cell1Label2.text = "All Popular"
                return tableView2Cell1
            }
            else if indexPath.row == 1
            {
                var tableView2Cell2 = tableView2.dequeueReusableCell(withIdentifier: "Tb2Cell2Identifier", for: indexPath) as! Tb2Cell2File
                tableView2Cell2.tb2Cell2Label1.text = "KURTI, SAREE & LEHENGA"
                tableView2Cell2.tb2Cell2Label2.text = "Sarees"
                return tableView2Cell2
            }
            else
            {
                var tableView2Cell3 = tableView2.dequeueReusableCell(withIdentifier: "Tb2Cell3Identifier", for: indexPath) as! Tb2Cell3File
                tableView2Cell3.tb2Cell3Label1.text = "WOMEN WESTERN"
                tableView2Cell3.tb2Cell3Label2.text = "Topwear"
                return tableView2Cell3
            }
        }
        else
        {
            var tableView1Cell = tableView1.dequeueReusableCell(withIdentifier: "TableView1Cell", for: indexPath) as! MyTableViewCell1
            tableView1Cell.tableView1Label.text = tableView1Array[indexPath.row]
            return tableView1Cell

        }
}
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if tableView == tableView2 {
                if indexPath.row == 0
                {
                    return 981
                }
                else if indexPath.row == 1
                {
                    return 450
                }
                else
                {
                    return 450
                }
            }
            else
            {
                return 100
            }
        }
        
    }

