//
//  ChatsTableViewCell.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 24/05/24.
//

import UIKit

class ChatsTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var senderProfilePictureOutlet: UIImageView!
    @IBOutlet weak var ChatTimeOutlet: UILabel!
    @IBOutlet weak var senderMessageOutlet: UILabel!
    @IBOutlet weak var ChatUserFullNameOutlet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
