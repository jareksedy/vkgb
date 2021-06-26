//
//  UserPhotoGallery.swift
//  vkgb
//
//  Created by Ярослав on 24.06.2021.
//

import Foundation

struct UserPhotoGallery {
    let userId: Int
    let imageNames: [String]?
    
    init(userId: Int, imageNames: [String]? = nil) {
        self.userId = userId
        self.imageNames = imageNames
    }
}

struct UserPhotoGalleryDataStorage {
    static var userPhotoGallery: [UserPhotoGallery] = [
        UserPhotoGallery(userId: 0, imageNames: ["hei1","hei2","hei3","hei4","hei5"]),
        UserPhotoGallery(userId: 1, imageNames: ["niet1","niet2","niet3","niet4"]),
        UserPhotoGallery(userId: 2, imageNames: ["schop1","schop2","schop3"]),
        UserPhotoGallery(userId: 3, imageNames: ["dost1","dost2","dost3", "dost4", "dost5", "dost6"]),
        UserPhotoGallery(userId: 4, imageNames: ["jung1","jung2","jung3", "jung4", "jung5", "jung6"]),
        UserPhotoGallery(userId: 5, imageNames: ["kant1","kant2","kant3"]),
        UserPhotoGallery(userId: 6, imageNames: ["camus1","camus2-1","camus3", "camus4", "camus5", "camus6"]),
        UserPhotoGallery(userId: 7, imageNames: ["wit1","wit2","wit3", "wit4"]),
        UserPhotoGallery(userId: 8, imageNames: ["kk1","kk2","kk3", "kk4"]),
        UserPhotoGallery(userId: 9, imageNames: ["fr1","fr2","fr3", "fr4"]),
        UserPhotoGallery(userId: 10, imageNames: ["sar1","sar2","sar3", "sar4", "sar5", "sar6"]),
        UserPhotoGallery(userId: 11),
    ]
}
