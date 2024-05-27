//
//  EventsTilesCell.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 23/05/24.
//

import UIKit

class PostLayoutTilesCell: UITableViewCell {
    
    @IBOutlet weak var PostCaptionOutlet: UILabel!
    @IBOutlet weak var PostLikesCountOutlet: UILabel!
    @IBOutlet weak var PostTimeOutlet: UILabel!
    @IBOutlet weak var PostImageOutlet: UIImageView!
    @IBOutlet weak var LikeButtonPressed: UIButton!
    @IBOutlet weak var CommentButtonPressed: UIButton!
    @IBOutlet weak var ShareButtonPressed: UIButton!
    @IBOutlet weak var UsernameOutlet: UILabel!
    @IBOutlet weak var ProfilePhotoOutlet: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
