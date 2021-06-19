//
//  AllGroupsTableViewController.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import UIKit

extension AllGroupsTableViewController: UISearchBarDelegate {
    
    public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        foundGroups = searchText != "" ? allOtherGroups.filter {$0.name.lowercased().contains(searchText.lowercased())} : allOtherGroups
        searching = true
        tableView.reloadData()
    }
    
    public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tableView.reloadData()
    }
}

class AllGroupsTableViewController: UITableViewController {
    
    var allOtherGroups = Array(Set(GroupDataStorage.groups).subtracting(GroupDataStorage.myGroups))
    var foundGroups = [Group]()
    var searching = false

    @IBOutlet weak var searchBar: UISearchBar!
    
    private func showAlertForRow(_ row: Int) {
        let alert = UIAlertController(title: "🤔\n", message: "Вы действительно желаете вступить в группу «\(allOtherGroups[row].name)»?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Да", style: UIAlertAction.Style.default, handler: { action in
            switch action.style {
            case .default:
                
                GroupDataStorage.myGroups.append(self.allOtherGroups[row])
                
                let successAlert = UIAlertController(title: "✨\n", message: "Поздравляем! Вы только что вступили в группу «\(self.allOtherGroups[row].name)». Ведите себя там хорошоу!", preferredStyle: .alert)
                successAlert.addAction(UIAlertAction(title: "Лады!", style: .default, handler: nil))
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchBar.delegate = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searching ? foundGroups.count : allOtherGroups.count
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell") as? AllGroupsTableViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(group: searching ? foundGroups[indexPath.row] : allOtherGroups[indexPath.row])
        
        cell.btnActionAdd = {(cell) in
            self.showAlertForRow(tableView.indexPath(for: cell)!.row)
        }
        
        return cell
    }
}
