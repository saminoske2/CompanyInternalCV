//
//  ProfessionalDetailViewController.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/3/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class ProfessionalDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //tableViews outlets
    @IBOutlet weak var experienceTableView: UITableView!
    
    

    
    @IBOutlet weak var profileImage: UIImageView!

    
    @IBOutlet weak var professionalName: UILabel!
    
    var professionalsName = "Professional Name"
    
    var professionalImage = "portrait5-1"
    
    var experienceSectionTitleText = "EXPERIENCE"
    
    var ExperienceStartDate = ["", "04/23/2014", "02/13/2015", "01/27/2017"]
    
    var ExperienceEndDate = ["", "12/23/2014", "5/22/2015", "11/05/2017"]
    
    var ExperienceTitle = ["The Making of Me", "The Rabbit Hole", "Basic", "Lavious Lounge"]
    
    var ExperienceDetail = ["laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione volupta", "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.", "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.", "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas."]
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ExperienceTitle.count
            
    }
    
                //-------------------------
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let experienceCell = tableView.dequeueReusableCell(withIdentifier: "ExperienceCell", for: indexPath) as!
        
            ExperienceTableViewCell
        
       
            experienceCell.experienceSectionTitle.text = "EXPERIENCE"
        
        
            experienceCell.experienceStartDate.text = ExperienceStartDate[indexPath.row]
        
        
            experienceCell.experienceEndDate.text = ExperienceEndDate[indexPath.row]
        
        
            experienceCell.experienceTitle.text = ExperienceTitle[indexPath.row]
        
        
            experienceCell.experienceDetail.text = ExperienceDetail[indexPath.row]
        
        
            experienceCell.experienceSectionTitle.text = experienceSectionTitleText
        
        
            return experienceCell
    
        }


    override func viewDidLoad() {
        super.viewDidLoad()
      
        experienceTableView.layer.cornerRadius = 4
        experienceTableView.layer.masksToBounds = true
        
        
        professionalName.text = professionalsName
        
        profileImage.image = UIImage(named:professionalImage)
        
        profileImage.layer.cornerRadius = 4
        profileImage.layer.masksToBounds = true


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
