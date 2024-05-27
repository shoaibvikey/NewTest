//
//  MainViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 16/05/24.
//

import UIKit

class MainViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    
    
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate=self
        tableView.dataSource=self
        tableView.register(UINib(nibName: "XibMainTableViewCell", bundle: nil), forCellReuseIdentifier: "XibTableCell")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "XibTableCell") as? XibMainTableViewCell
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 419
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.tabBarItem.title = "Home"
        self .tabBarItem.image = UIImage(systemName: "h.square.fill")
    }
    
    @IBOutlet weak var navigationBarHome: UINavigationItem!
    

  
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
