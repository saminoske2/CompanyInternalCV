//
//  professionalCVTableViewCell.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/3/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class professionalCVTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var profileName: UILabel!
    
    @IBOutlet weak var jobTitle: UILabel!
    
    @IBOutlet weak var speciality: UILabel!

    @IBOutlet weak var yearsActive: UILabel!
    
    @IBOutlet weak var viewBackground: UIView!
    
    @IBOutlet weak var profileImageBackgroundOne: UIView!
    
    @IBOutlet weak var profileImageBackgroundTwo: UIView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
