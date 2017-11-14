//
//  addProfessionalViewController.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/19/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class addProfessionalViewController: UIViewController {

    @IBOutlet weak var professionalImage: UIImageView!
    
    @IBOutlet weak var professionalName: UITextField!
    
    @IBOutlet weak var jobTitle: UITextField!
    
    @IBOutlet weak var speciality: UITextField!
    
    @IBOutlet weak var yearsActive: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
