//
//  TableView2Cell2.swift
//  Meesho
//
//  Created by Choudhary Dipika on 07/06/23.
//

import UIKit

class Tb2Cell2File: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var tb2Cell2Label1: UILabel!
    @IBOutlet weak var tb2Cell2Label2: UILabel!
    @IBOutlet weak var tb2Cell2cv: UICollectionView!
    
    var tb2Cell2NameArray = ["All Sarees", "Georgette Sarees", "Chiffon Sarees", "Cotton Sarees", "Net Sarees", "Under 299", "Silk Sarees", "New Collection", "Bridal Sarees"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tb2Cell2cv.dataSource = self
        tb2Cell2cv.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
//-----------------CollectionView------------------
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tb2Cell2NameArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = tb2Cell2cv.dequeueReusableCell(withReuseIdentifier: "Tb2Cell2Cv1Identifier", for: indexPath) as! Tb2Cell2Cv1File
        cell.tb2Cell2cv1Img.layer.cornerRadius = cell.tb2Cell2cv1Img.frame.size.width/2
        cell.tb2Cell2cv1Img.image = UIImage(named: tb2Cell2NameArray[indexPath.row])
        cell.tb2Cell2cv1Label.text = tb2Cell2NameArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 130)
    }

}
