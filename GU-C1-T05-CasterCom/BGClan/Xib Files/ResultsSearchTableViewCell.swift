//
//  ResultsSearchTableViewCell.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 27/05/24.
//

import UIKit

class ResultsSearchTableViewCell: UITableViewCell {

    
    @IBOutlet weak var SearchProfileImageView: UIImageView!
    @IBOutlet weak var SearchUsernameOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
