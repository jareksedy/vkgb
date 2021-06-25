//
//  AnimationScreenViewController.swift
//  vkgb
//
//  Created by Ярослав on 20.06.2021.
//

import UIKit

class AnimationScreenViewController: UIViewController {
    
    func delay(_ delay:Double, closure:@escaping ()->()) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }
    
    @IBOutlet weak var dotView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dot1 = UIView()
        let dot2 = UIView()
        let dot3 = UIView()
        
        let dSize = 60
        let sSize = 10
        
        dot1.frame = CGRect(x: 0, y: sSize, width: dSize, height: dSize)
        dot2.frame = CGRect(x: dSize + sSize, y: sSize, width: dSize, height: dSize)
        dot3.frame = CGRect(x: dSize * 2 + sSize * 2, y: sSize, width: dSize, height: dSize)
        
        dot1.backgroundColor = UIColor.systemPink
        dot2.backgroundColor = UIColor.systemPink
        dot3.backgroundColor = UIColor.systemPink
        
        dot1.layer.cornerRadius = CGFloat(dSize / 2)
        dot2.layer.cornerRadius = CGFloat(dSize / 2)
        dot3.layer.cornerRadius = CGFloat(dSize / 2)
        
        dot1.alpha = 0.5
        dot2.alpha = 0.5
        dot3.alpha = 0.5
        
        dot1.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        dot2.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        dot3.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        dotView.addSubview(dot1)
        dotView.addSubview(dot2)
        dotView.addSubview(dot3)
        
        let initialDelay = 0.25
        let animationDuration = 1.0
        
        delay(initialDelay){
            
            UIView.animateKeyframes(withDuration: animationDuration,
                                    delay: 0,
                                    options: [.autoreverse],
                                    animations: {
                                        UIView.addKeyframe(withRelativeStartTime: 0,
                                                           relativeDuration: animationDuration,
                                                           animations: {
                                                            dot1.alpha += 0.5
                                                            dot1.backgroundColor = UIColor.systemBlue
                                                            dot1.transform = CGAffineTransform(scaleX: 1, y: 1)
                                                           })
                                        UIView.addKeyframe(withRelativeStartTime: 0.20,
                                                           relativeDuration: animationDuration,
                                                           animations: {
                                                            dot2.alpha += 0.5
                                                            dot2.backgroundColor = UIColor.systemBlue
                                                            dot2.transform = CGAffineTransform(scaleX: 1, y: 1)
                                                           })
                                        UIView.addKeyframe(withRelativeStartTime: 0.40,
                                                           relativeDuration: animationDuration,
                                                           animations: {
                                                            dot3.alpha += 0.5
                                                            dot3.backgroundColor = UIColor.systemBlue
                                                            dot3.transform = CGAffineTransform(scaleX: 1, y: 1)
                                                           })
                                        UIView.addKeyframe(withRelativeStartTime: 0.60,
                                                           relativeDuration: animationDuration,
                                                           animations: {
                                                            dot1.alpha -= 0.5
                                                            dot1.backgroundColor = UIColor.systemPink
                                                            dot1.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                                                           })
                                        UIView.addKeyframe(withRelativeStartTime: 0.80,
                                                           relativeDuration: animationDuration,
                                                           animations: {
                                                            dot2.alpha -= 0.5
                                                            dot2.backgroundColor = UIColor.systemPink
                                                            dot2.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                                                           })
                                        UIView.addKeyframe(withRelativeStartTime: 1.0,
                                                           relativeDuration: animationDuration,
                                                           animations: {
                                                            dot3.alpha -= 0.5
                                                            dot3.backgroundColor = UIColor.systemPink
                                                            dot3.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                                                           })
                                    },
                                    completion: { _ in
                                        self.performSegue(withIdentifier: "goForth", sender: self)
                                    })
        }
    }
}
