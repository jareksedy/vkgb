//
//  FriendCarouselPhotoViewController.swift
//  vkgb
//
//  Created by Ярослав on 26.06.2021.
//

import UIKit

class FriendCarouselPhotoViewController: UIViewController {
    
    @IBOutlet weak var FriendLargePhotoView: CarouselView!
    
    var userId: Int?
    var photoId: Int?
    var userPhotos = UserPhotoGalleryDataStorage.userPhotoGallery
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if userId != nil && userPhotos[userId!].imageNames != nil {
            FriendLargePhotoView.imageNames = userPhotos[userId!].imageNames
            FriendLargePhotoView.visibleIndex = photoId!
        } else {
            FriendLargePhotoView.imageNames = ["defaultAvatar"]
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}
