//
//  addDetailViewController.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/19/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class addDetailViewController: UIViewController {

    @IBOutlet weak var detailSectionType: UITextField!
    
    @IBOutlet weak var detailStartDate: UITextField!
    
    @IBOutlet weak var detailEndDate: UITextField!
    
    @IBOutlet weak var detailTitle: UITextField!
    
    @IBOutlet weak var detailContent: UITextView!
    
    
    
    
    
    
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
