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
    
    @IBAction func tapFunction(sender: UITapGestureRecognizer) {
        AllGroupsTableViewCell.animate(withDuration: 0.75,
                                    delay: 0,
                                    usingSpringWithDamping: 0.25,
                                    initialSpringVelocity: 0.75,
                                    options: [.allowUserInteraction],
                                    animations: {
                                        self.AllGroupsImage.bounds = self.AllGroupsImage.bounds.insetBy(dx: 40, dy: 40)
                                    },
                                    completion: nil)
    }
    
    var btnActionAdd: ((UITableViewCell) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(AllGroupsTableViewCell.tapFunction))
        AllGroupsImage.isUserInteractionEnabled = true
        AllGroupsImage.addGestureRecognizer(tap)
    }

    @IBAction func addGroupAction(_ sender: Any) {
        btnActionAdd?(self)
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
