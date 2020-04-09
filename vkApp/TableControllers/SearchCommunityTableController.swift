
import UIKit

class SearchCommunityTableController: UITableViewController {
    
    var searchCommunity = [Community(name: "Saint-Petersburg", subscribers: 10000, image: UIImage(named: "Санкт-Петербург.jpg")!),
                           Community(name: "BBC-chanell", subscribers: 10000, image: UIImage(named: "BBC.jpg")!),
                           Community(name: "Скидки Aliexpress", subscribers: 10000, image: UIImage(named: "Aliexrpess.jpg")!),
                           Community(name: "Ковры дешево", subscribers: 10000, image: UIImage(named: "Ковер.jpg")!)]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return searchCommunity.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCommunityCell", for: indexPath) as! SearchCommunityCell
        
        let Community = searchCommunity[indexPath.row]
        
        cell.SearchCommunityLabel.text = Community.name
        cell.SearchCommunityImage.image = Community.image
        cell.SearchCommunityImage.layer.cornerRadius = cell.SearchCommunityImage.layer.frame.height / 2
        


        
        return cell
    }

}
