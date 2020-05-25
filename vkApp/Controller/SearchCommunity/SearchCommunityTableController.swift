
import UIKit

class SearchCommunityTableController: UITableViewController {
    
    var searchCommunity = [Community(name: "Saint-Petersburg", subscribers: 10000, image: UIImage(named: "Санкт-Петербург")!),
                           Community(name: "BBC-chanell", subscribers: 10000, image: UIImage(named: "BBC")!),
                           Community(name: "Скидки Aliexpress", subscribers: 10000, image: UIImage(named: "Aliexrpess")!),
                           Community(name: "Ковры дешево", subscribers: 10000, image: UIImage(named: "Ковер")!)]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
