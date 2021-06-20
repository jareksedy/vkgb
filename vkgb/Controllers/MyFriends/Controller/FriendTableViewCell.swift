//
//  FriendTableViewCell.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    //@IBOutlet weak var avatar: AvatarView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    @IBAction func tapFunction(sender: UITapGestureRecognizer) {
        FriendTableViewCell.animate(withDuration: 0.75,
                                    delay: 0,
                                    usingSpringWithDamping: 0.25,
                                    initialSpringVelocity: 0.75,
                                    options: [.allowUserInteraction],
                                    animations: {
                                        self.userImage.bounds = self.userImage.bounds.insetBy(dx: 40, dy: 40)
                                    },
                                    completion: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(FriendTableViewCell.tapFunction))
        userImage.isUserInteractionEnabled = true
        userImage.addGestureRecognizer(tap)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configure(user: User) {
        userImage.image = UIImage(named: user.imageName ?? "defaultAvatar")
        name.text = user.name + " " + user.lastname
    }
}
