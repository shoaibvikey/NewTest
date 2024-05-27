//
//  UpcomingEventsViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 24/05/24.
//

import UIKit

class UpcomingEventsViewController: UIViewController {

    
    @IBOutlet weak var EventsTableViewController: UITableView!
    
    var upcomingEvents: [EventsCell] = [
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EventsTableViewController.delegate = self
        EventsTableViewController.dataSource = self
        EventsTableViewController.register(UINib(nibName: "EventsTableViewCell", bundle: nil), forCellReuseIdentifier: "eventcell")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UpcomingEventsViewController : UITableViewDelegate{
    
}
extension UpcomingEventsViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventcell", for: indexPath) as! EventsTableViewCell
        cell.EventNameLabelOutlet?.text = upcomingEvents[indexPath.row].EventName
        cell.EventDateOutlet?.text = upcomingEvents[indexPath.row].EventDate
        cell.EventLocationOutlet?.text = upcomingEvents[indexPath.row].EventLocation
        cell.EventImpressionOutlet?.text = upcomingEvents[indexPath.row].EventImpression
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    
    
}
