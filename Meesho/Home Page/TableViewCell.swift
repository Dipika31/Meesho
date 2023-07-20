//
//  TableViewCell.swift
//  Meesho
//
//  Created by Choudhary Dipika on 18/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
   
    @IBOutlet weak var tableviewlabel: UILabel!
    @IBOutlet weak var collectionView3: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        let cell = collectionView3.dequeueReusableCell(withReuseIdentifier: "TVCell3", for: indexPath) as! CollectionViewCell3
//                    cell.backgroundColor = .red
//                   return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 91, height: 93)
//    }
    

}
