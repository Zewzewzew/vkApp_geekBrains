//
//  FriendListCell.swift
//  vkApp
//
//  Created by Никита Ананьев on 03.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class FriendListCell: UITableViewCell {
    
    @IBOutlet weak var FriendNameLabel: UILabel!
    @IBOutlet weak var FriendImage: UIImageView!
    @IBOutlet weak var FriendImageView: UIView!
    var usableSectionValues:[User] = []


    override func awakeFromNib() {
        super.awakeFromNib()
        FriendImageView.layer.cornerRadius = FriendImageView.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}

class FriendImageView: FriendListCell {

}
