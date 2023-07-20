//
//  CommunityPage.swift
//  Meesho
//
//  Created by Choudhary Dipika on 03/07/23.
//

import UIKit

class CommunityPage: UIViewController {

    var cv1Array = ["All","Announcements","Product Zone","Fun & Entertainment","Reselling Tips","Questions","Lifestyle","Inspiration"]
    var cv2Img = ["p21","p22","p23","p25","p24"]
    var tbName = ["Meesho Genie","Meesho Genie","Meesho Genie","Meesho Genie","Meesho Genie"]
    var tb1Img = ["tbp1","tbp2","tbp3","tbp4","tbp5"]
    var tbCaption1 = ["Hindi Movie Fans - Take Away 10 Credits","Hindi Movie Fans - Take Away 10 Credits","Hindi Movie Fans - Take Away 10 Credits","Hindi Movie Fans - Take Away 10 Credits","Hindi Movie Fans - Take Away 10 Credits"]
    var tbCaption2 = ["Born in a film director's family , she has been a heart throb of Bollywood...","Born in a film director's family , she has been a heart throb of Bollywood...","Born in a film director's family , she has been a heart throb of Bollywood...","Born in a film director's family , she has been a heart throb of Bollywood...","Born in a film director's family , she has been a heart throb of Bollywood..."]
    var tbDate = ["3 July 2023","1 July 2023","30 June 2023","23 June 2023","13 June 2023"]
    
    @IBOutlet weak var communityCv1: UICollectionView!
    @IBOutlet weak var communityCv2: UICollectionView!
    @IBOutlet weak var communityTb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

// MARK = Collection View

extension CommunityPage: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.communityCv2
        {
            return 5
        }
        else
        {
            return cv1Array.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.communityCv1
        {
                    let cell = communityCv1.dequeueReusableCell(withReuseIdentifier: "CommunityCv1Identifier", for: indexPath) as! CommunityCv1CellFile
                    cell.communityCv1Label.text = cv1Array[indexPath.row]
                    cell.layer.borderWidth = 1
                    cell.layer.borderColor = UIColor.lightGray.cgColor
                    cell.layer.cornerRadius = 17
                    return cell
        }
        else
        {
            let cell = communityCv2.dequeueReusableCell(withReuseIdentifier: "CommunityCv2Identifier", for: indexPath) as! CommunityCv2CellFile
            cell.layer.borderWidth = 1
            cell.layer.borderColor = UIColor.lightGray.cgColor
            cell.layer.cornerRadius = 10
            cell.cv2Image.image = UIImage(named: cv2Img[indexPath.row])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.communityCv1
        {
            return CGSize(width: 180, height: 34)
        }
        else
        {
            return CGSize(width: 364, height: 128)

        }
    }
}

// MARK = Table View

extension CommunityPage: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = communityTb.dequeueReusableCell(withIdentifier: "CommunityTbIdentifier", for: indexPath) as! CommunityTbCellFile
        cell.tbName.text = tbName[indexPath.row]
        cell.tbCaption1.text = tbCaption1[indexPath.row]
        cell.tbCaption2.text = tbCaption2[indexPath.row]
        cell.tbImage.image = UIImage(named: tb1Img[indexPath.row])
        cell.tbDate.text = tbDate[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 666
    }
}
