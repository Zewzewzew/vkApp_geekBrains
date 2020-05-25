//
//  FriendPhotoCell.swift
//  vkApp
//
//  Created by Никита Ананьев on 03.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class FriendPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var AlbumFriendPhoto: UIImageView!
    @IBOutlet weak var AlbumFriendLabel: UILabel!
    
    var isLiked = false

    @IBAction func LikeButton(_ sender: LikeButton) {
        if !isLiked {
            AlbumFriendLabel.text = "Лайков: 1"
            isLiked = true
        } else{
            AlbumFriendLabel.text = "Лайков: 0"
            isLiked = false

        }
    }
}
