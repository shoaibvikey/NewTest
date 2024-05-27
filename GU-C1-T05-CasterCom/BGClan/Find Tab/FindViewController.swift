//
//  FindViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 16/05/24.
//

import UIKit
 
class FindViewController: UIViewController {
    
    @IBOutlet weak var switchButton: UISegmentedControl!
    @IBOutlet weak var containerViewForTeam: UIView!
    @IBOutlet weak var containerViewForTeammate: UIView!
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.tabBarItem.title = "Find"
        self .tabBarItem.image = UIImage(systemName: "magnifyingglass")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        containerViewForTeam.backgroundColor = UIColor(red: 255, green: 116, blue: 108, alpha: 0)
        self.view.bringSubviewToFront(containerViewForTeam)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchButtonToggle(_ sender: Any ) {
        switch switchButton.selectedSegmentIndex{
        case 0:
            self.view.bringSubviewToFront(containerViewForTeam)
        case 1:
            self.view.bringSubviewToFront(containerViewForTeammate)
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
