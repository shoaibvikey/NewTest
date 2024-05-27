//
//  PastEventsViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 24/05/24.
//

import UIKit

class PastEventsViewController: UIViewController {

    
    var pastEvents: [EventsCell] = [
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
        EventsCell(EventName: "BattleGround Mobile India Season 1", EventDate: "2nd May 2024 - 15th July 2024 ", EventLocation: "Mumbai", EventImpression: "6434"),
    ]
    
    @IBOutlet weak var PastEventView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        PastEventView.delegate = self
        PastEventView.dataSource = self
        PastEventView.register(UINib(nibName: "EventsTableViewCell", bundle: nil), forCellReuseIdentifier: "eventcell")

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
extension PastEventsViewController : UITableViewDelegate{
    
}
extension PastEventsViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pastEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventcell", for: indexPath)
       
        /*
         cell.Ev?.text = pastEvents[indexPath.row].EventName
        cell.EventDateOutlet?.text = pastEvents[indexPath.row].EventDate
        cell.EventLocationOutlet?.text = pastEvents[indexPath.row].EventLocation
        cell.EventImpressionOutlet?.text = pastEvents[indexPath.row].EventImpression
        */
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    
    
}
