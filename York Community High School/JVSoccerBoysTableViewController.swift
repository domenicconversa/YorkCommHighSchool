//
//  JVSoccerBoysTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/23/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class JVSoccerBoysTableViewController: UITableViewController {

    var date = ["03/13/2017", "03/20/2017", "03/23/2017", "04/07/2017", "04/12/2017", "04/17/2017", "04/20/2017", "04/27/2017", "04/28/2017", "05/01/2017", "05/04/2017", "05/06/2017", "05/08/2017", "05/10/2017", "05/12/2017"]
    var team = ["@ Naperville North - Cancelled", "vs. Hinsdale Central", "@ Loyola Academy", "vs. Lyons Township", "vs. Oak Park - River Forest", "@ Palatine", "@ Glenbrook South", "vs. Glenbard West", "vs. Naperville North", "vs. Montini", "@ St. Charles East", "@ Glenbrook North", "@ New Trier", "@ Saint Ignatius", "@ Downers Grove North"]
    var time = ["5:00 PM", "5:30 PM", "5:00 PM", "6:30 PM", "6:00 PM", "5:00 PM", "5:00 PM", "5:30 PM", "5:30 PM", "5:30 PM", "4:30 PM", "1:00 PM", "5:30 PM", "5:00 PM", "6:00 PM"]
    var location = ["Naperville North", "Stadium", "Loyola Academy- Munz campus", "Stadium", "Stadium", "Palatine", "Glenbrook South", "Stadium", "Stadium", "Stadium", "St Charles East - Norris Stadium", "Glenbrook North", "New Trier - Northfield campus", "Saint Ignatius", "Downers Grove North"]
    var home = ["A", "H", "A", "H", "H", "A", "A", "H", "H", "H", "A", "A", "A", "A", "A"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add a background view to the table view
        let backgroundImage = UIImage(named: "York High School 2.jpg")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
        
        // center and scale background image
        imageView.contentMode = .scaleAspectFill
        
        // no lines where there aren't cells
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = imageView.bounds
        imageView.addSubview(blurView)
        
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
        return team.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "footballCell", for: indexPath) as! FootballTableViewCell
        
        // Configure the cell...
        
        cell.date.text = date[(indexPath as NSIndexPath).row]
        cell.team.text = team[(indexPath as NSIndexPath).row]
        cell.time.text = time[(indexPath as NSIndexPath).row]
        cell.location.text = location[(indexPath as NSIndexPath).row]
        cell.home.text = home[(indexPath as NSIndexPath).row]
        
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
