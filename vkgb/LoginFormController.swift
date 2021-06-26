//
//  LoginFormController.swift
//  vkgb
//
//  Created by Ярослав on 30.05.2021.
//

import UIKit

class LoginFormController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButton(_ sender: UIButton) {
        UIButton.animate(withDuration: 0.75,
                                    delay: 0,
                                    usingSpringWithDamping: 0.25,
                                    initialSpringVelocity: 0.75,
                                    options: [.allowUserInteraction],
                                    animations: {
                                        self.loginButton.bounds = self.loginButton.bounds.insetBy(dx: -10, dy: -10)
                                    },
                                    completion: nil)
    }
    
}
