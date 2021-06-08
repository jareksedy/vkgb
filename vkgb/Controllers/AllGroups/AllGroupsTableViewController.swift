//
//  AllGroupsTableViewController.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import UIKit

class AllGroupsTableViewController: UITableViewController {
    var allOtherGroups = Array(Set(GroupDataStorage.groups).subtracting(GroupDataStorage.myGroups))

    private func showAlertForRow(_ row: Int) {
        let alert = UIAlertController(title: "🤔", message: "Вы действительно желаете вступить в группу «\(allOtherGroups[row].name)»?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Да", style: UIAlertAction.Style.default, handler: { action in
            switch action.style {
            case .default:
                
                GroupDataStorage.myGroups.append(self.allOtherGroups[row])
                
                let successAlert = UIAlertController(title: "✨", message: "Поздравляем! Вы только что вступили в группу «\(self.allOtherGroups[row].name)». Ведите себя там хорошоу!", preferredStyle: .alert)
                successAlert.addAction(UIAlertAction(title: "Ладно", style: .default, handler: nil))
                self.present(successAlert, animated: true, completion: nil)
                
                self.allOtherGroups.remove(at: row)
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
        
        cell.btnActionAdd = {(cell) in
            self.showAlertForRow(tableView.indexPath(for: cell)!.row)
        }
        
        return cell
    }
}
