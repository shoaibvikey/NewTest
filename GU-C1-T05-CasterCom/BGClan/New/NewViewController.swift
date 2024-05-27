//
//  NewViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 16/05/24.
//

import UIKit

class NewViewController: UIViewController {
    
    
    @IBOutlet weak var createPostOutlet: UIView!
    
    @IBOutlet weak var createEventOutlet: UIView!
    
    @IBOutlet weak var segmentButtonNewOutlet: UISegmentedControl!
    
    @IBOutlet weak var NavigationOutlet: UINavigationItem!
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.tabBarItem.title = "New"
        self .tabBarItem.image = UIImage(systemName: "plus")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NavigationOutlet.title = "Create Post"
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
    
    
    @IBAction func newSegmentToggle(_ sender: Any) {
        switch segmentButtonNewOutlet.selectedSegmentIndex{
        case 0:
            self.view.bringSubviewToFront(createPostOutlet)
            NavigationOutlet.title = "Create Post"
        case 1:
            self.view.bringSubviewToFront(createEventOutlet)
            NavigationOutlet.title = "Create Event "
        default:
            break
        }
        
        
        
        
    }
}
