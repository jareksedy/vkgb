//
//  GroupTableViewController.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import UIKit

class GroupTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GroupDataStorage.myGroups.count
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell") as? GroupTableViewCell
        else {
            return UITableViewCell()
        }
        
        cell.configure(group: GroupDataStorage.myGroups[indexPath.row])

        return cell
    }
}
