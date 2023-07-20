//
//  CommunityTbCellFile.swift
//  Meesho
//
//  Created by Choudhary Dipika on 03/07/23.
//

import UIKit

class CommunityTbCellFile: UITableViewCell {

    @IBOutlet weak var tbName: UILabel!
    @IBOutlet weak var tbCaption1: UILabel!
    @IBOutlet weak var tbCaption2: UILabel!
    @IBOutlet weak var tbImage: UIImageView!
    @IBOutlet weak var tbDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
