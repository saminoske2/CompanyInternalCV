//
//  MainTableViewController.swift
//  Professional CV
//
//  Created by Quinton Quaye on 10/5/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    var companies = ["Eternal", "Mamas House", "The Revival Kit", "The Pink Nipple", "Slicks for Chicks"]
    var companyImages = ["Amalfi-Italy-night-coast-city-rocks-house-lights-boats_1920x1200_wallpaper.jpg", "Amalfi-Italy-night-coast-city-rocks-house-lights-boats_1920x1200_wallpaper.jpg", "Amalfi-Italy-night-coast-city-rocks-house-lights-boats_1920x1200_wallpaper.jpg", "Amalfi-Italy-night-coast-city-rocks-house-lights-boats_1920x1200_wallpaper.jpg", "Amalfi-Italy-night-coast-city-rocks-house-lights-boats_1920x1200_wallpaper.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return companies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as!
            MainTableViewCell

        // Configure the cell...

        cell.companyName.text = companies[indexPath.row]
        
        cell.companyBackgroundImage.image = UIImage(named: companyImages[indexPath.row])
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // to add a company....
    
    @IBAction func addCompanyBtn(_ sender: Any) {
    
        performSegue(withIdentifier: "AddCompany", sender: self)
    }
    
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "MainSegue" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
            let destinationController = segue.destination as!
            ViewController
            
            destinationController.companysName = companies[indexPath.row]
        
            }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

        }
    }

}
