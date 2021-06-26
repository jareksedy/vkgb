//
//  FriendCarouselPhotoViewController.swift
//  vkgb
//
//  Created by Ярослав on 26.06.2021.
//

import UIKit

class FriendCarouselPhotoViewController: UIViewController {
    
    @IBOutlet weak var FriendLargePhotoView: UIImageView!
    
    var userId: Int?
    var photoId: Int?
    var userPhotos = UserPhotoGalleryDataStorage.userPhotoGallery
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if userId != nil && userPhotos[userId!].imageNames != nil {
            FriendLargePhotoView.image = UIImage(named: userPhotos[userId!].imageNames![photoId!])
        } else {
            FriendLargePhotoView.image = UIImage(named: "defaultAvatar")
        }
    }
}
