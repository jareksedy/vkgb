//
//  LoginFormController.swift
//  vkgb
//
//  Created by Ярослав on 30.05.2021.
//

import UIKit

class LoginFormController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let login = "cthulhu"
    let password = "fhtagn!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loginButton.layer.cornerRadius = 4.0
    }
    
    func auth() {
        if loginTextField.text == login && passwordTextField.text == password {
            self.performSegue(withIdentifier: "authSegue", sender: self)
            
        } else {
            let authFailedAlert = UIAlertController(title: "💩\nБлин!",
                                                    message: "Неверный логин или пароль!",
                                                    preferredStyle: .alert)
            
            authFailedAlert.addAction(UIAlertAction(title: "Да и хрен с ним, впусти!",
                                                 style: .default,
                                                 handler: {_ in
                                                    self.performSegue(withIdentifier: "authSegue", sender: self)
                                                 }))
            
            self.present(authFailedAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        UIButton.animate(withDuration: 0.75,
                                    delay: 0,
                                    usingSpringWithDamping: 0.25,
                                    initialSpringVelocity: 0.75,
                                    options: [.allowUserInteraction],
                                    animations: {
                                        self.loginButton.bounds = self.loginButton.bounds.insetBy(dx: -10, dy: -10)
                                    },
                                    completion: {_ in
                                        self.auth()
                                    })
    }
    
}
