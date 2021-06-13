//
//  AvatarView.swift
//  vkgb
//
//  Created by Ярослав on 13.06.2021.
//

import UIKit

@IBDesignable public class AvatarView: UIImageView {
    
    init(size:CGFloat = 80){
        super.init(frame: CGRect(x: 0, y: 0, width: size, height: size))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        clipsToBounds = true
        
        let path = UIBezierPath(roundedRect: bounds.insetBy(dx: 0.5, dy: 0.5), cornerRadius: bounds.width / 2)
        let mask = CAShapeLayer()
        
        mask.path = path.cgPath
        layer.mask = mask
    }
}
