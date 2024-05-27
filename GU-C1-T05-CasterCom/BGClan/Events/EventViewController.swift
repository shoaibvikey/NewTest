//
//  EventViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 16/05/24.
//

import UIKit

class EventViewController: UIViewController {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.tabBarItem.title = "Events"
        self .tabBarItem.image = UIImage(systemName: "calendar")
    }
    
    @IBOutlet weak var PastEventView: UIView!
    @IBOutlet weak var UpcomingEventView: UIView!
    @IBOutlet weak var segmentControllerEvents: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.bringSubviewToFront(UpcomingEventView)
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentControllerEventsIBAction(_ sender: UISegmentedControl) {
        switch segmentControllerEvents.selectedSegmentIndex{
        case 0:
            self.view.bringSubviewToFront(UpcomingEventView)
            //NavigationOutlet.title = "Create Post"
        case 1:
            print(" ")
            self.view.bringSubviewToFront(UpcomingEventView)
            
        default:
            break
        }
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
