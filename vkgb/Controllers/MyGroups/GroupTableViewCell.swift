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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
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
