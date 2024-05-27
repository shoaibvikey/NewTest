//
//  teammateViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 20/05/24.
//

import UIKit

class teammateViewController: UIViewController {

    @IBOutlet weak var tableViewTeammateSection: UITableView!
    
    let titles = ["Age","Device","Location","Role"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
/*
        tableViewTeammateSection.delegate = self
        tableViewTeammateSection.dataSource = self
        tableViewTeammateSection.isScrollEnabled = false
*/
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
/*
extension teammateViewController : UITableViewDelegate{
    
}
extension teammateViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
}
*/
