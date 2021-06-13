//
//  FriendTableViewCell.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var avatar: AvatarView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(user: User) {
        avatar.image = UIImage(named: user.imageName ?? "defaultAvatar")
        name.text = user.name + " " + user.lastname
    }

}
