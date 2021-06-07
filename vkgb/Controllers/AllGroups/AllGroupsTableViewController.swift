//
//  AllGroupsTableViewController.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import UIKit

class AllGroupsTableViewController: UITableViewController {
    var allOtherGroups = Array(Set(GroupDataStorage.groups).subtracting(GroupDataStorage.myGroups))

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allOtherGroups.count
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell") as? AllGroupsTableViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(group: allOtherGroups[indexPath.row])
        return cell
    }
}
