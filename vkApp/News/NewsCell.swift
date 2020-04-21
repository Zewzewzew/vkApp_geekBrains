//
//  NewsCell.swift
//  vkApp
//
//  Created by Никита Ананьев on 20.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var shadowView: ShadowView!
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var textForNew: UILabel!
    @IBOutlet weak var collectionImageNew: UICollectionView!
    
    
    
    
    
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
