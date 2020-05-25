import UIKit

class MyCommunityTableController: UITableViewController {
    
    var myCommunity = [Community(name:"Котики", subscribers: 25, image: UIImage(named:"Котики.jpg")!),
                       Community(name:"Петросян Е.В. - Официальная группа", subscribers: 25, image: UIImage(named:"Петросян.jpg")!),
                       Community(name:"Майнкрафт - это жизнь", subscribers: 25, image: UIImage(named:"Майнкрафт.jpg")!)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCommunity.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCommunityCell", for: indexPath) as! MyCommunityCell
        let Community = myCommunity[indexPath.row]
        
        cell.MyCommunityName.text = Community.name
        cell.MyCommunityImage.image = Community.image
        cell.MyCommunityImage.layer.cornerRadius = cell.MyCommunityImage.layer.frame.height / 2
        
        return cell
    }
    @IBAction func addCommunity(segue: UIStoryboardSegue) {
        
        if segue.identifier == "addCommunity" {
            
            let SearchCommunityController = segue.source as! SearchCommunityTableController
            
            if let indexPath = SearchCommunityController.tableView.indexPathForSelectedRow {
                let newCommunity = SearchCommunityController.searchCommunity[indexPath.row]
                
                if !myCommunity.contains(newCommunity) {
                    
                    myCommunity.append(newCommunity)
                    tableView.reloadData()
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            myCommunity.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
