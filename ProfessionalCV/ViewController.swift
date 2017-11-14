//
//  ViewController.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/3/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var companyName: UILabel!
    
    @IBOutlet weak var companySlogan: UILabel!
    
    @IBOutlet weak var companyAddress: UILabel!
    
    
    
    @IBOutlet weak var tableView: UITableView!

    var companysName = ""
    
    var professionals = ["Amy Anderson", "Lilly Makon", "Tommy Gurrello", "Suitie Zhang", "Olivia Moone", "James Patterson"]
    
    var professionalsImages = ["portrait1-1.jpg", "portrait2-1.jpg", "portrait3-1.jpg", "portrait4-1.jpg", "portrait5-1.jpg", "portrait6-1.jpg"]
    
    var profesionalJobTitle = ["Writer", "Editor", "Accountant", "Designer", "Ui-UX Developer", "Mobile App Developer"]
    
    var professionalSpeciality = ["Content Creation", "Finalize Editions", "Financial Planning, Record Keeping", "Graphic Design, Iconic Design", "User Interface, HCD", "Program Architecture"]
    
    var yearsActive = ["2 years", "1 year", "4 years", "2 years", "9 years","7 years"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return professionals.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!
        professionalCVTableViewCell
        
        cell.profileName.text = professionals[indexPath.row]
        
        cell.profileImage.image = UIImage(named: professionalsImages[indexPath.row])
        
        cell.profileImage.layer.cornerRadius = 4
        cell.profileImage.layer.masksToBounds = true
        

        cell.profileImageBackgroundOne.layer.cornerRadius = 4
        cell.profileImageBackgroundOne.layer.masksToBounds = true
        

        cell.profileImageBackgroundTwo.layer.cornerRadius = 4
        cell.profileImageBackgroundTwo.layer.masksToBounds = true
        

        
        
        
        
        cell.jobTitle.text = profesionalJobTitle[indexPath.row]
        
        cell.speciality.text = professionalSpeciality[indexPath.row]
        
        cell.yearsActive.text = yearsActive[indexPath.row]
        
        cell.backgroundColor = UIColor(white: 1, alpha: 0.0)
        
        cell.viewBackground.layer.cornerRadius = 4
        cell.viewBackground.layer.masksToBounds = true
        
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        companyName.text = companysName
        
        tableView.backgroundColor = .clear
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // to add a professional....
    @IBAction func addProfessionalBtn(_ sender: Any) {
        
        performSegue(withIdentifier: "AddProfessional", sender: self)
    }
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "ProfessionalDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
            let destinationController = segue.destination as!
                ProfessionalDetailViewController
            
                destinationController.professionalsName = professionals[indexPath.row]
                
                destinationController.professionalImage = professionalsImages[indexPath.row]
                
                
           
            }
            
           
        }
    }

    
    
    
}

