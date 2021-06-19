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
    
    private func configure() {

        self.setTitle("\(liked ? "♥" : "♡") \(counter)", for: .normal)
        
        self.backgroundColor = liked ? UIColor.systemPink : UIColor.clear
        self.setTitleColor(liked ? UIColor.white : UIColor.gray, for: .normal)
        self.clipsToBounds = true
        self.layer.cornerRadius = 4.0
        
        addTarget(self,
                         action: #selector(onTap(_:)),
                         for: .touchUpInside)
        
    }
    
    @objc func onTap(_ sender: UIButton) {
        liked.toggle()
        counter += liked ? 1 : -1
    }
    
}
