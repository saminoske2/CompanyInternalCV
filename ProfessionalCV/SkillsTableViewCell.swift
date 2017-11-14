//
//  SkillsTableViewCell.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/4/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class SkillsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var skillsTitle: UILabel!
    
    
    @IBOutlet weak var skillsPercentageBar: UIProgressView!
    
    
    @IBOutlet weak var skillsPercentText: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
}
