//
//  MyCommunityCell.swift
//  vkApp
//
//  Created by Никита Ананьев on 04.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class MyCommunityCell: UITableViewCell {

    @IBOutlet weak var MyCommunityName: UILabel!
    
    @IBOutlet weak var MyCommunityImage: UIImageView!
    @IBOutlet weak var MyCommunityImageShadow: UIView!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        MyCommunityImageShadow.layer.cornerRadius = MyCommunityImageShadow.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}



