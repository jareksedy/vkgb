//
//  GroupTableViewController.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import UIKit

class GroupTableViewController: UITableViewController {
    
    private func showAlertForRow(_ row: Int) {
        let alert = UIAlertController(title: "🤷🏿‍♂️\n", message: "Вы действительно желаете покинуть группу «\(GroupDataStorage.myGroups[row].name)»?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Да", style: UIAlertAction.Style.default, handler: { action in
            switch action.style {
            case .default:
                
                let successAlert = UIAlertController(title: "🙌\n", message: "Вы только что покинули группу «\(GroupDataStorage.myGroups[row].name)».", preferredStyle: .alert)
                successAlert.addAction(UIAlertAction(title: "Окейно!", style: .default, handler: nil))
                self.present(successAlert, animated: true, completion: nil)
                
                GroupDataStorage.myGroups.remove(at: row)
                self.tableView.reloadData()
    
            case .cancel:
                break
            case .destructive:
                break
            @unknown default:
                break
            }
        }))
        alert.addAction(UIAlertAction(title: "Нет", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
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
        
        cell.btnActionRemove = {(cell) in
            self.showAlertForRow(tableView.indexPath(for: cell)!.row)
        }

        return cell
    }
}
