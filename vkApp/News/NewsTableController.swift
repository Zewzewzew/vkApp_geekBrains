//
//  NewsTableController.swift
//  vkApp
//
//  Created by Никита Ананьев on 20.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class NewsTableController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell
        let new = news[indexPath.row]
        
        cell.nameLabel.text = new.user.userName
        cell.avatarImage.image = new.user.userImage
        cell.textForNew.text = new.text
        
        
        
        return cell
    }
}
