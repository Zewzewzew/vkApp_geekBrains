//
//  MyCommunityTableViewController.swift
//  vkApp
//
//  Created by Никита Ананьев on 04.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class MyCommunityTableController: UITableViewController {
    var myCommunity = [Community(name:"Котики", subscribers: 25, image: UIImage(named:"Котики.jpg")!),
                       Community(name:"Петросян Е.В. - Официальная группа", subscribers: 25, image: UIImage(named:"Петросян.jpg")!),
                       Community(name:"Майнкрафт - это жизнь", subscribers: 25, image: UIImage(named:"Майнкрафт.jpg")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myCommunity.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCommunityCell", for: indexPath) as! MyCommunityCell
        
        cell.MyCommunityName.text = myCommunity[indexPath.row].name
        cell.MyCommunityImage.image = myCommunity[indexPath.row].image
        cell.MyCommunityImage.layer.cornerRadius = cell.MyCommunityImage.layer.frame.height / 2
        
        return cell
    }
    @IBAction func addCommunity(segue: UIStoryboardSegue) {
        if segue.identifier == "addCommunity" {
            
            let SearchCommunityController = segue.source as! SearchCommunityTableController
            
            if let indexPath = SearchCommunityController.tableView.indexPathForSelectedRow {
        // Получаем город по индексу
                let newCommunity = SearchCommunityController.searchCommunity[indexPath.row]
        // Добавляем город в список выбранных городов
                myCommunity.append(newCommunity)
                tableView.reloadData()
            }
        }
        
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Если была нажата кнопка «Удалить»
        if editingStyle == .delete {
        // Удаляем город из массива
            myCommunity.remove(at: indexPath.row)
        // И удаляем строку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
