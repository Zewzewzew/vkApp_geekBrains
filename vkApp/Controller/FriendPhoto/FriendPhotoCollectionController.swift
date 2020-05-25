//
//  FriendPhotoViewController.swift
//  vkApp
//
//  Created by Никита Ананьев on 03.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FriendPhotoCollectionController: UICollectionViewController {

    
    var friendPhoto: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (friendPhoto?.userPhotos.count)!
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhotoCell", for: indexPath) as! FriendPhotoCell
        cell.AlbumFriendPhoto.image = friendPhoto?.userPhotos[indexPath.row]
        
        return cell
    }
}
