//
//  ChatsViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 24/05/24.
//

import UIKit

class ChatsViewController: UIViewController {
    
    var chats : [ChatsCell] = [
    ChatsCell(SenderFullName: "Vineet Chaudhary", SenderMessage: "Hello,what's up!", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Divyanshu Rai", SenderMessage: "Should I quit gaming?", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Aadarsh Shukla", SenderMessage: "Hi Meet me in the lobby  at 3pm!", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Aditya Pratap Singh", SenderMessage: "Tommorrow we are having another BGMI event", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Ankit Bhat", SenderMessage: "When you are free to play", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Vineet Chaudhary", SenderMessage: "I am unable to level up bro", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Harsh Bharadwaj", SenderMessage: "My KD is now 30 in last game!", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Naman Bansal", SenderMessage: "Harsh kd is not increasing", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Anunay Kumar", SenderMessage: "we need to level up", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Amritanshu", SenderMessage: "Hello", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Khushi Tomar", SenderMessage: "Lets have a match at 6", MessageTime: "2:30 PM"),
    ChatsCell(SenderFullName: "Varsha Sharma", SenderMessage: "Hello ready for match", MessageTime: "2:30 PM"),
    ]
    
    @IBOutlet weak var ChatsTableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ChatsTableViewOutlet.dataSource = self
        ChatsTableViewOutlet.delegate = self
        ChatsTableViewOutlet.register(UINib(nibName: "ChatsTableViewCell", bundle: nil), forCellReuseIdentifier: "chatscell")

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
extension ChatsViewController : UITableViewDelegate{
    
}
extension ChatsViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatscell", for: indexPath) as! ChatsTableViewCell
        cell.ChatUserFullNameOutlet?.text = chats[indexPath.row].SenderFullName
        cell.senderMessageOutlet?.text = chats[indexPath.row].SenderMessage
        cell.ChatTimeOutlet?.text = chats[indexPath.row].MessageTime
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    
}

