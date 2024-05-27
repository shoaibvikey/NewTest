//
//  ProfileViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 16/05/24.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    
    @IBOutlet var postsAndAchievements: UISegmentedControl!
    @IBOutlet var postsTableView: UIView!
    @IBOutlet var AchievementsTableView: UIView!
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.tabBarItem.title = "Profile"
        self .tabBarItem.image = UIImage(systemName: "p.square.fill")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
      

       

   
            }
        

//        navigationItem.rightBarButtonItem=editButtonItem
    
    

    @IBAction func postsAndAchievementsSegemtedControl(_ sender: UISegmentedControl) {
       
            switch postsAndAchievements.selectedSegmentIndex{
            case 0:
                postsTableView.isHidden=false
                AchievementsTableView.isHidden=true
            case 1:
                postsTableView.isHidden=true
                AchievementsTableView.isHidden=false
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
