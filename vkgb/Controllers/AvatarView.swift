//
//  AvatarView.swift
//  vkgb
//
//  Created by Ярослав on 13.06.2021.
//

import UIKit

extension UIView {

    func addShadow(offset: CGSize, color: UIColor, radius: CGFloat, opacity: Float) {
        layer.masksToBounds = false
        layer.shadowOffset = offset
        layer.shadowColor = color.cgColor
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity

        let backgroundCGColor = backgroundColor?.cgColor
        backgroundColor = nil
        layer.backgroundColor =  backgroundCGColor
    }
}

@IBDesignable public class AvatarView: UIView {
    
    var image: UIImage?
    
    init(size:CGFloat = 80, shadowRadius: CGFloat = 4.0, shadowOpacity: Float = 0.5, shadowColor: UIColor = UIColor.black){
        super.init(frame: CGRect(x: 0, y: 0, width: size, height: size))
        
        self.shadowRadius = shadowRadius
        self.shadowOpacity = shadowOpacity
        self.shadowColor = shadowColor
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBInspectable var shadowRadius: CGFloat = 4.0 {
        didSet{
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.5 {
        didSet{
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.black {
        didSet{
            setNeedsLayout()
        }
    }
    
    override public func layoutSubviews() {
        
        super.layoutSubviews()
               
        let imageContent = UIImageView()
        imageContent.image = image
        imageContent.frame = bounds.insetBy(dx: 15, dy: 15)
        imageContent.layer.cornerRadius = imageContent.bounds.width / 2
        imageContent.clipsToBounds = true
        addSubview(imageContent)
        
        backgroundColor = UIColor.clear
        layer.cornerRadius = bounds.width / 2
        
        addShadow(offset: CGSize(width: 0, height: 0), color: shadowColor, radius: shadowRadius, opacity: shadowOpacity)
        
    }
}
