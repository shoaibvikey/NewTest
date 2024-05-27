//
//  MainViewController.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 16/05/24.
//

import UIKit

class MainViewController: UIViewController {
    var postsOnHome : [PostModel] = [
        PostModel(caption: "Ready for Qualifiers?", contentPath: "hasdhdcj", postingTime: "5 minutes ago", likesCount: 76423, commentsCount: 7612),
        PostModel(caption: "Finally, the wait is over!!!!", contentPath: "hasdhdcj", postingTime: "1 hour ago", likesCount: 76423, commentsCount: 7612),
        PostModel(caption: "Here we go again......", contentPath: "hasdhdcj", postingTime: "2 hours ago", likesCount: 76423, commentsCount: 7612),
        PostModel(caption: "Let's come together this time", contentPath: "hasdhdcj", postingTime: "3 hours ago", likesCount: 76423, commentsCount: 7612),
        PostModel(caption: "We're here for you guys....", contentPath: "hasdhdcj", postingTime: "1 day ago", likesCount: 76423, commentsCount: 7612),
        PostModel(caption: "Here we go again...", contentPath: "hasdhdcj", postingTime: "5 days ago", likesCount: 76423, commentsCount: 7612),
    ]

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.tabBarItem.title = "Home"
        self .tabBarItem.image = UIImage(systemName: "house")
    }
    
    @IBOutlet weak var PostTableViewOutlet: UITableView!
    @IBOutlet weak var navigationBarHome: UINavigationItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        PostTableViewOutlet.delegate = self
        PostTableViewOutlet.dataSource = self
        PostTableViewOutlet.register(UINib(nibName: "PostLayoutTilesCell", bundle: nil), forCellReuseIdentifier: "postcell")
      

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
extension MainViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postsOnHome.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postcell", for: indexPath) as!PostLayoutTilesCell
        
        cell.PostCaptionOutlet?.text = postsOnHome[indexPath.row].caption
        cell.PostTimeOutlet?.text = "\(postsOnHome[indexPath.row].postingTime)"
        cell.UsernameOutlet?.text = "@bgmi"
        cell.PostLikesCountOutlet?.text = "\(postsOnHome[indexPath.row].likesCount)"
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 536
    }
    
    
}
extension MainViewController : UITableViewDelegate{
    
}
