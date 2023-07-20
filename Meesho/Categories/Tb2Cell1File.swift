//
//  TableView2Cell1HeadingFile.swift
//  Meesho
//
//  Created by Choudhary Dipika on 07/06/23.
//

import UIKit

class Tb2Cell1File: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var tb2Cell1Label1: UILabel!
    @IBOutlet weak var tb2Cell1Label2: UILabel!
    
    @IBOutlet weak var tb2Cell1cv: UICollectionView!
    
    
    var tb2Cell1NameArray = ["Kurtis & Dress Material", "Sarees", "Westernwear","Jewellery", "Men Fashion", "Kids", "Footwear", "Beauty & Personal Care", "Electronics", "Home Decor & Improvements","Kitchen & Appliances", "Dress Materials", "Lehengas & Blouses", "Home Textiles", "Bags & Luggage",  "Summer Store", "Stationary & Office Stationary", "Bike & Car","Accessories","Nightwear","Books"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tb2Cell1cv.delegate = self
        tb2Cell1cv.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tb2Cell1NameArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = tb2Cell1cv.dequeueReusableCell(withReuseIdentifier: "tb2Cell1cv1Identifier", for: indexPath) as! tb2Cell1Cv1File
        cell.tb2Cell1cv1Image.layer.cornerRadius = cell.tb2Cell1cv1Image.frame.size.width/2
        cell.tb2Cell1cv1Image.image = UIImage(named: tb2Cell1NameArray[indexPath.row])
        cell.tb2Cell1cv1Label.text = tb2Cell1NameArray[indexPath.row]
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 130)
    }
}
