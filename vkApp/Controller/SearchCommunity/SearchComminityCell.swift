//
//  SearchComminityCell.swift
//  vkApp
//
//  Created by Никита Ананьев on 04.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class SearchCommunityCell: UITableViewCell {

    @IBOutlet weak var SearchCommunityImage: UIImageView!
    @IBOutlet weak var SearchCommunityLabel: UILabel!
    @IBOutlet weak var SearchCommunityShadow: UIView!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SearchCommunityShadow.layer.cornerRadius = SearchCommunityShadow.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

