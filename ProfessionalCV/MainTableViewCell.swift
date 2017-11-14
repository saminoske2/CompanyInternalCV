//
//  MainTableViewCell.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/5/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var companyName: UILabel!
    
    @IBOutlet weak var companyBackgroundImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
