//
//  ExperienceTableViewCell.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/5/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var experienceStartDate: UILabel!
    
    @IBOutlet weak var experienceEndDate: UILabel!

    @IBOutlet weak var experienceTitle: UILabel!
    
    @IBOutlet weak var experienceDetail: UILabel!
    
    @IBOutlet weak var experienceSectionTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
