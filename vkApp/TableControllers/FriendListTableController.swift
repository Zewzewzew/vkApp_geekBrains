//
//  FriendListTableViewController.swift
//  vkApp
//
//  Created by Никита Ананьев on 02.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class FriendListTableController: UITableViewController {
    //var myFriend:[User] = (userName:"Арагорн", userImage:UIImage(contentsOfFile: "aragorn.jpg"))

    var myFriend = [User(userName: "Арагорн", userImage: UIImage(named: "Арагорн.jpg")!),
                    User(userName: "Аватар Аанг", userImage: UIImage(named: "Аватар Аанг.jpg")!),
                    User(userName: "Джон Уик", userImage: UIImage(named: "Джон Уик.jpg")!),
                    User(userName: "Тралл", userImage: UIImage(named: "Тралл.jpg")!),
                    User(userName: "Клифф Бут", userImage: UIImage(named: "Клифф Бут.jpg")!),
                    User(userName: "Ктулху", userImage: UIImage(named: "Ктулху.jpg")!)]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriend.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendListCell", for: indexPath) as! FriendListCell
        cell.FriendNameLabel.text = myFriend[indexPath.row].userName
        cell.FriendImage.image = myFriend[indexPath.row].userImage
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
