//
//  AllGroupsTableViewCell.swift
//  vkgb
//
//  Created by Ярослав on 07.06.2021.
//

import UIKit

class AllGroupsTableViewCell: UITableViewCell {
    @IBOutlet weak var AllGroupsImage: UIImageView!
    @IBOutlet weak var AllGroupsName: UILabel!
    @IBOutlet weak var AllGroupsDescription: UILabel!
    @IBOutlet weak var addGroupButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func addGroupAction(_ sender: Any) {
        print("hello")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(group: Group) {
        AllGroupsImage.image = UIImage(named: group.imageName ?? "defaultGroupImage")
        AllGroupsName.text = group.name
        AllGroupsDescription.text = group.description
    }

}
