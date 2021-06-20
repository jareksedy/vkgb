//
//  GroupTableViewCell.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var GroupImage: UIImageView!
    @IBOutlet weak var GroupName: UILabel!
    @IBOutlet weak var GroupDescription: UILabel!
    @IBOutlet weak var removeGroupButton: UIButton!
    
    @IBAction func tapFunction(sender: UITapGestureRecognizer) {
        GroupTableViewCell.animate(withDuration: 0.75,
                                    delay: 0,
                                    usingSpringWithDamping: 0.25,
                                    initialSpringVelocity: 0.75,
                                    options: [.allowUserInteraction],
                                    animations: {
                                        self.GroupImage.bounds = self.GroupImage.bounds.insetBy(dx: 40, dy: 40)
                                    },
                                    completion: nil)
    }
    
    var btnActionRemove: ((UITableViewCell) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(GroupTableViewCell.tapFunction))
        GroupImage.isUserInteractionEnabled = true
        GroupImage.addGestureRecognizer(tap)
    }
    
    @IBAction func removeGroupAction(_ sender: Any) {
        btnActionRemove?(self)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(group: Group) {
        GroupImage.image = UIImage(named: group.imageName ?? "defaultGroupImage")
        GroupName.text = group.name
        GroupDescription.text = group.description
    }

}
