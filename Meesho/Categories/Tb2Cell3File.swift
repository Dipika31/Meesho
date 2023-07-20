//
//  TableView2Cell3.swift
//  Meesho
//
//  Created by Choudhary Dipika on 17/06/23.
//

import UIKit

class Tb2Cell3File: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
 
    var tb2Cell3NameArray = ["All Topwear","Dress","Gowns","Jumpsuits","New Trends","Shirts","T-shirts","Tops & Bottom Sets","Tops & Tunics"]
    
    @IBOutlet weak var tb2Cell3Label1: UILabel!
    @IBOutlet weak var tb2Cell3Label2: UILabel!
    @IBOutlet weak var tb2Cell3cv: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tb2Cell3cv.delegate = self
        tb2Cell3cv.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

//-------------------------CollectionView---------------------
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = tb2Cell3cv.dequeueReusableCell(withReuseIdentifier: "Tb2Cell3Cv1Identifier", for: indexPath) as! Tb2Cell3Cv1File
        cell.Tv2Cell3Cv1img.layer.cornerRadius = cell.Tv2Cell3Cv1img.frame.size.width/2
        cell.Tv2Cell3Cv1img.image = UIImage(named: tb2Cell3NameArray[indexPath.row])
        cell.Tv2Cell3Cv1Label.text = tb2Cell3NameArray[indexPath.row]
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 130)
    }
}
