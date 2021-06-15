//
//  LikeButton.swift
//  vkgb
//
//  Created by Ярослав on 13.06.2021.
//

import UIKit
import Foundation

class LikeButton: UIButton {
    
    var counter = Int.random(in: 0...99)
    var liked = false
    
    // MARK: - UIButton
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setNeedsDisplay()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setNeedsDisplay()
    }
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        configure()
    }
    
    // MARK: - Internal methods
    
    fileprivate func configure() {
        
        /*
        let buttonWidth: CGFloat = 80
        let buttonHeight: CGFloat = 40
        self.frame = CGRect(x: ((superview!.bounds.maxX - buttonWidth) / 2) + buttonWidth,
                            y: ((superview!.bounds.maxY - superview!.bounds.minY) / 2),
                            width: buttonWidth,
                            height: buttonHeight)
         */
        
        self.setTitle("💟 Нра! (\(counter))", for: .normal)
        
        //self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 0)
        
        self.backgroundColor = liked ? UIColor.systemPink : UIColor.systemBlue
        self.setTitleColor(UIColor.white, for: .normal)
        self.clipsToBounds = true
        self.layer.cornerRadius = 4.0
       //self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        
        //let heartImageView = UIImageView()
        //heartImageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        //heartImageView.image = UIImage(systemName: "heart.circle.fill")
        //heartImageView.tintColor = UIColor.white
        //self.addSubview(heartImageView)
        
        addTarget(self,
                         action: #selector(onTap(_:)),
                         for: .touchUpInside)

        
        //self.setImage(UIImage(systemName: "heart.circle.fill"), for: .normal)
        //self.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 0)
        //self.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 0)
        
    }
    
    @objc func onTap(_ sender: UIButton) {
        liked.toggle()
        counter += liked ? 1 : -1
    }
    
}
