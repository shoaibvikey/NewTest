//
//  NotificationViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 21/05/24.
//

import UIKit

class NotificationViewController: UIViewController {

   
    @IBOutlet weak var notificationCellOutlet: UITableView!
    
    var notifications:[NotificationCells] = [
        NotificationCells(notificationText: "Divyanshu Rai accepted the invitation for Team Curiosa.", time: "2:30 PM" ) ,
       NotificationCells(notificationText:"Vineet Chaudhary accepted the invitation for Team Curiosa.", time: "2:30 PM") ,
       NotificationCells(notificationText:"Adarsh Shukla accepted the invitation for Team Curiosa.", time: "2:30 PM"),
       NotificationCells(notificationText: "Registration for the official event BGIS is started", time: "2:30 PM" ) ,
       NotificationCells(notificationText:"Registration for the Sky-esports is closed", time: "2:30 PM") ,
       NotificationCells(notificationText:"Welcome to CasterCom! ❤️ Don’t forget toexperience our feature related to BGMI", time: "2:30 PM"),
       NotificationCells(notificationText: "Divyanshu Rai accepted the invitation for Team Curiosa." , time: "2:30 PM") ,
       NotificationCells(notificationText:"Vineet Chaudhary accepted the invitation for Team Curiosa.", time: "2:30 PM") ,
       NotificationCells(notificationText:"Adarsh Shukla accepted the invitation for Team Curiosa.", time: "2:30 PM"),
       NotificationCells(notificationText: "Registration for the official event BGIS is started", time: "2:30 PM") ,
       NotificationCells(notificationText:"Registration for the Sky-esports is closed", time: "2:30 PM") ,
       NotificationCells(notificationText:"Welcome to CasterCom! ❤️ Don’t forget toexperience our feature related to BGMI", time: "2:30 PM"),
       NotificationCells(notificationText: "Divyanshu Rai accepted the invitation for Team Curiosa.", time: "2:30 PM" ) ,
       NotificationCells(notificationText:"Vineet Chaudhary accepted the invitation for Team Curiosa.", time: "2:30 PM") ,
       NotificationCells(notificationText:"Adarsh Shukla accepted the invitation for Team Curiosa.", time: "2:30 PM"),
       NotificationCells(notificationText: "Registration for the official event BGIS is started", time: "2:30 PM" ) ,
       NotificationCells(notificationText:"Registration for the Sky-esports is closed", time: "2:30 PM") ,
       NotificationCells(notificationText:"Welcome to CasterCom! ❤️ Don’t forget toexperience our feature related to BGMI", time: "2:30 PM"),
       NotificationCells(notificationText: "Divyanshu Rai accepted the invitation for Team Curiosa.", time: "2:30 PM" ) ,
       NotificationCells(notificationText:"Vineet Chaudhary accepted the invitation for Team Curiosa.", time: "2:30 PM") ,
       
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationCellOutlet.delegate = self
        notificationCellOutlet.dataSource = self
        notificationCellOutlet.register(UINib(nibName: "NotificationTableViewCell", bundle: nil), forCellReuseIdentifier: "noticell")

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
extension NotificationViewController : UITableViewDelegate {
    
}



extension NotificationViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noticell", for: indexPath) as! NotificationTableViewCell
        cell.notificationMainTextOutlet?.text = notifications[indexPath.row].notificationText
        cell.notificationTimeTextOutlet?.text = notifications[indexPath.row].time
        
        return cell
    }
    
    
}
