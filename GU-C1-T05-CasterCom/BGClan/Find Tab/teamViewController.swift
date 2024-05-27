//
//  teamViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 20/05/24.
//

import UIKit

class teamViewController: UIViewController {

    @IBOutlet weak var tableViewTeamSection: UITableView!
    
    let headings = ["Age","Device","Location","Role"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewTeamSection.delegate = self
        tableViewTeamSection.dataSource = self
        tableViewTeamSection.isScrollEnabled = false

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
extension teamViewController : UITableViewDelegate{
    
}
extension teamViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headings.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell.textLabel?.text = headings[indexPath.row]
        return cell
    }
}
