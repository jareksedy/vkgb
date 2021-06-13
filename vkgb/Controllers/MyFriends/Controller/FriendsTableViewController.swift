//
//  FriendsTableViewController.swift
//  vkgb
//
//  Created by Ярослав on 05.06.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var users = UserDataStorage.users

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell") as? FriendTableViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(user: users[indexPath.row])
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let friendsCollectionViewController = segue.destination as? FriendsCollectionViewController,
              let index = tableView.indexPathForSelectedRow?.row
        else {
            return
        }
        
        friendsCollectionViewController.userID = index
    }
    

}
