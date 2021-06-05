//
//  MyFriendsViewController.swift
//  vkgb
//
//  Created by Ярослав on 05.06.2021.
//

import Foundation
import UIKit

final class MyFriendsViewController: UIViewController {
    
}

extension MyFriendsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "hello world"
        
        return cell
    }
}
