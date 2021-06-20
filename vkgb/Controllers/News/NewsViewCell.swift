//
//  NewsViewCell.swift
//  vkgb
//
//  Created by Ярослав on 19.06.2021.
//

import UIKit

class NewsViewCell: UITableViewCell {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var pubDate: UILabel!
    @IBOutlet weak var newsText: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(news: News) {
        
        userImage.image = UIImage(named: UserDataStorage.users.filter{ $0.id == news.userId}[0].imageName ?? "defaultAvatar")
        userName.text = String(UserDataStorage.users.filter{ $0.id == news.userId}[0].name + " " + UserDataStorage.users.filter{ $0.id == news.userId}[0].lastname)
        pubDate.text = news.date
        newsText.text = news.text
        newsImage.image = UIImage(named: news.imageName ?? "defaultNewsImage")

    }
}
