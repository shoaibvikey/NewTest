//
//  NotificationTableViewCell.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 22/05/24.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {

    @IBOutlet weak var notificationCellViewOutlet: UIView!
    @IBOutlet weak var notificationCellimageOutlet: UIImageView!
    @IBOutlet weak var notificationTimeTextOutlet: UILabel!
    @IBOutlet weak var notificationMainTextOutlet: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
