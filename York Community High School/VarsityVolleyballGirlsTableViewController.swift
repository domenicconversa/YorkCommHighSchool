//
//  VarsityVolleyballGirlsTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/27/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class VarsityVolleyballGirlsTableViewController: UITableViewController {

    var date = ["03/21/2017", "03/22/2017", "03/23/2017", "03/24/2017", "03/27/2017", "03/29/2017", "03/30/2017", "04/01/2017", "04/03/2017", "04/04/2017", "04/05/2017", "04/06/2017", "04/08/2017", "04/10/2017", "04/11/2017", "04/12/2017", "04/13/2017", "04/15/2017", "04/17/2017", "04/18/2017", "04/20/2017", "04/22/2017", "04/24/2017", "04/25/2017", "04/28/2017", "04/29/2017", "05/01/2017", "05/02/2017", "05/03/2017", "05/04/2017", "05/06/2017", "05/08/2017", "05/09/2017", "05/11/2017", "05/13/2017", "05/17/2017", "05/20/2017", "05/22/2017", "05/23/2017", "05/24/2017", "05/25/2017", "05/27/2017", "05/31/2017", "06/01/2017", "06/03/2017", "06/05/2017", "06/09/2017", "06/10/2017"]
    var team = ["@ Glenbard East", "@ Naperville Central-Cancelled", "@ Hoffman Estates", "vs. Waubonsie Valley", "vs. Rolling Meadows-Cancelled", "vs. Benet", "@ Maine South - Cancelled", "vs. Rolling Meadows", "@ DOWNERS GROVE NORTH", "vs. DOWNERS GROVE NORTH", "vs. Elk Grove", "@ DOWNERS GROVE NORTH", "vs. ADDISON TRAIL", "vs. GLENBARD WEST", "@ GLENBARD WEST", "@ Wheaton North", "vs. GLENBARD WEST", "@ PROVISO EAST", "@ PROVISO WEST", "vs. PROVISO WEST", "@ PROVISO WEST", "vs. DOWNERS GROVE SOUTH", "vs. OAK PARK RIVER FOREST", "@ OAK PARK RIVER FOREST", "@ OAK PARK RIVER FOREST", "@ WILLOWBROOK", "@ HINSDALE CENTRAL", "vs. HINSDALE CENTRAL", "@ Naperville Central-", "@ HINSDALE CENTRAL", "vs. LEYDEN", "vs. LYONS TOWNSHIP", "@ LYONS TOWNSHIP", "vs. LYONS TOWNSHIP", "@ MORTON", "vs. HINSDALE SOUTH", "vs. Prospect", "@ IHSA - Regional Quarterfinl", "@ IHSA - Regional Quarterfinl", "@ IHSA - Regional Semifinals", "@ IHSA - Regional Semifinals", "@ IHSA - Regional Finals", "@ IHSA - Sectional Semifinals", "@ IHSA - Sectional Semifinals", "@ IHSA - Sectional Finals", "@ IHSA - Super Sectionals", "@ IHSA - State Finals", "@ IHSA - State Finals"]
    var time = ["4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "11:00 AM", "11:00 AM", "4:30 PM", "1:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "2:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "7:15 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "2:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "10:00 AM", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA"]
    var location = ["Glenbard East", "Naperville Central", "Hoffman Estates", "York Baseball Field", "York Baseball Field", "York Baseball Field", "Maine South", "York Baseball Field", "Legion Field", "York Baseball Field", "York Baseball Field", "Legion Field", "York Baseball Field", "York Baseball Field", "GLENBARD WEST", "Wheaton North", "York Baseball Field", "PROVISO EAST", "PROVISO WEST", "York Baseball Field", "PROVISO WEST", "York Baseball Field", "York Baseball Field", "OAK PARK RIVER FOREST", "Benedictine Unversity", "WILLOWBROOK", "HINSDALE CENTRAL", "York Baseball Field", "Naperville Central", "HINSDALE CENTRAL", "York Baseball Field", "York Baseball Field", "LYONS TOWNSHIP", "York Baseball Field", "MORTON", "York Baseball Field", "York Baseball Field", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA"]
    var home = ["A", "A", "A", "H", "H", "H", "A", "H", "A", "H", "H", "A", "H", "H", "A", "A", "H", "A", "A", "H", "A", "H", "H", "A", "A", "A", "A", "H", "A", "A", "H", "H", "A", "H", "A", "H", "H", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A"]
    
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
