//
//  FriendListTableViewController.swift
//  vkApp
//
//  Created by Никита Ананьев on 02.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class FriendListTableController: UITableViewController {
 

    var myFriend = [User(userName: "Арагорн", userImage: UIImage(named: "Арагорн.jpg")!,userPhotos: aragornPhotos),
                    User(userName: "Аватар Аанг", userImage: UIImage(named: "Аватар Аанг.jpg")!,userPhotos:avatarAangPhotos),
                    User(userName: "Джон Уик", userImage: UIImage(named: "Джон Уик.jpg")!,userPhotos:johnWickPhotos),
                    User(userName: "Тралл", userImage: UIImage(named: "Тралл.jpg")!,userPhotos:trallPhotos),
                    User(userName: "Клифф Бут", userImage: UIImage(named: "Клифф Бут.jpg")!,userPhotos:cliffBootPhotos),
                    User(userName: "Ктулху", userImage: UIImage(named: "Ктулху.jpg")!,userPhotos:ctulhuPhotos)]
    

 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriend.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendListCell", for: indexPath) as! FriendListCell
        let friend = myFriend[indexPath.row]
        cell.FriendNameLabel.text = friend.userName
        cell.FriendImage.image = friend.userImage
        cell.FriendImage.layer.cornerRadius = cell.FriendImage.frame.height / 2
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let FriendPhotoCollectionViewController = segue.destination as? FriendPhotoCollectionController,
            let index = tableView.indexPathForSelectedRow?.row
            else {
                return
        }
        FriendPhotoCollectionViewController.friendPhoto = myFriend[index]
    }
 
}
