//
//  FriendsCollectionViewController.swift
//  vkgb
//
//  Created by Ярослав on 05.06.2021.
//

import UIKit

private let reuseIdentifier = "FriendsCollectionViewCell"

class FriendsCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var users = UserDataStorage.users
    var userID: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = users[userID ?? 0].name + " " + users[userID ?? 0].lastname
    }

    //MARK: - UICollectionViewDelegateFlowLayout

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
           return CGSize(width: 300.0, height: 300.0)
        }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsPictures", for: indexPath) as! FriendsCollectionViewCell
        
        cell.friendPhotoView.image = UIImage(named: users[userID ?? 0].imageName ?? "defaultAvatar")
    
        return cell
    }
}
