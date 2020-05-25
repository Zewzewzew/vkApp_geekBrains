
import UIKit


class FriendListTableController: UITableViewController , UISearchBarDelegate {
    @IBOutlet weak var searchBar: UISearchBar!
    var filtredFriends = [String:[User]]()
    var filtredFriendsKeys = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        searchBar.delegate = self
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        var filter = [User]()
        if !searchText.isEmpty {
            for friendsInCell in friendDictionary{
                for friendNameInCell in friendsInCell.value {
                    if friendNameInCell.userName.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil {
                        filter.append(friendNameInCell)
                    }
                }
            }
        }
        
        filtredFriends = friendsNamesDictionary(user: filter)
        filtredFriendsKeys = filtredFriends.keys.compactMap{String($0.first!)}.sorted(by: { $0 < $1 })
        tableView.reloadData()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let FriendPhotoCollectionViewController = segue.destination as? FriendPhotoCollectionController,
            let index = tableView.indexPathForSelectedRow?.section,
            let indexForFriend = tableView.indexPathForSelectedRow?.row,
            var friends = friendDictionary[friendKeysInDictionary[index]]

            else {
                return
        }
        if !filtredFriends.isEmpty {
            friends = filtredFriends[filtredFriendsKeys[index]]!
             }
        FriendPhotoCollectionViewController.friendPhoto = friends[indexForFriend]
    }
    

}


extension FriendListTableController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if !filtredFriends.isEmpty {
            return filtredFriends.count
        }
        return friendKeysInDictionary.count
    }
    
    
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if !filtredFriends.isEmpty {
            let friendKey = filtredFriendsKeys[section]
            
            if let friendValues = filtredFriends[friendKey] {
                       return friendValues.count
                   }
        }
        let friendKey = friendKeysInDictionary[section]

        if let friendValues = friendDictionary[friendKey] {
            return friendValues.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendListCell", for: indexPath) as! FriendListCell
        if !filtredFriends.isEmpty {
           let friendKey = filtredFriendsKeys[indexPath.section]
           let friendsInSection = filtredFriends[friendKey]!
               cell.FriendNameLabel.text = friendsInSection[indexPath.row].userName
               cell.FriendImage.image = friendsInSection[indexPath.row].userImage
               cell.FriendImage.layer.cornerRadius = cell.FriendImage.frame.height / 2
           return cell
        }
        let friendKey = friendKeysInDictionary[indexPath.section]
        let friendsInSection = friendDictionary[friendKey]!
            cell.FriendNameLabel.text = friendsInSection[indexPath.row].userName
            cell.FriendImage.image = friendsInSection[indexPath.row].userImage
            cell.FriendImage.layer.cornerRadius = cell.FriendImage.frame.height / 2
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if !filtredFriends.isEmpty {
            return filtredFriendsKeys[section]
        }
        return friendKeysInDictionary[section]
       }
}

