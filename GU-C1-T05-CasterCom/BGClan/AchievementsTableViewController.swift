//
//  AchievementsTableViewController.swift
//  BGClan
//
//  Created by Batch-2 on 26/05/24.
//

import UIKit

class AchievementsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        navigationItem.rightBarButtonItem=editButtonItem
    }

  
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return achievements.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "achievementCell", for: indexPath)
        
        let achievement = achievements[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text="\(achievement.eventName)"
        content.secondaryText="\(achievement.eventRank)"
//        content.image=achievement.eventPoster
        
        
       
            
        cell.contentConfiguration = content
        return cell
    }
 

}
