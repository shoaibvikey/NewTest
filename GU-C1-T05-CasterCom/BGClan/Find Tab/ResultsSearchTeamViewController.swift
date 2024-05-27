//
//  ResultsSearchTeamViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 26/05/24.
//

import UIKit

class ResultsSearchTeamViewController: UIViewController {

    
    @IBOutlet weak var TeamSearchResultTableviewController: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TeamSearchResultTableviewController.dataSource = self
        TeamSearchResultTableviewController.delegate = self
        TeamSearchResultTableviewController.register(UINib(nibName: "ResultsSearchTableViewCell", bundle: nil), forCellReuseIdentifier: "teamsearchresult")

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
extension ResultsSearchTeamViewController : UITableViewDelegate{
    
}
extension ResultsSearchTeamViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamsearchresult", for: indexPath)as! ResultsSearchTableViewCell
        cell.SearchUsernameOutlet?.text = users[indexPath.row].firstName + " " + users[indexPath.row].lastName
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
    
    
}
