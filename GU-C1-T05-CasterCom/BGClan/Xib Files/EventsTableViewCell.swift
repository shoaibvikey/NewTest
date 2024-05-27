//
//  EventsTableViewCell.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 24/05/24.
//

import UIKit

class EventsTableViewCell: UITableViewCell {

    @IBOutlet weak var EventImpressionOutlet: UILabel!
    @IBOutlet weak var EventLocationOutlet: UILabel!
    @IBOutlet weak var EventDateOutlet: UILabel!
    @IBOutlet weak var EventNameLabelOutlet: UILabel!
    @IBOutlet weak var EventImageViewOutlet: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
