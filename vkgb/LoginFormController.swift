//
//  LoginFormController.swift
//  vkgb
//
//  Created by Ярослав on 30.05.2021.
//

import UIKit

class LoginFormController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    let login = "cthulhu"
    let password = "fhtagn!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
        self.loginTextField.delegate = self
        self.passwordTextField.delegate = self
        //self.passwordTextField.isSecureTextEntry = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
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
    
    @objc func keyboardWasShown(notification: Notification) {
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWillBeHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }
    
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        UIButton.animate(withDuration: 0.75,
                         delay: 0,
                         usingSpringWithDamping: 0.25,
                         initialSpringVelocity: 0.75,
                         options: [],
                         animations: {
                            self.loginButton.bounds = self.loginButton.bounds.insetBy(dx: -20, dy: -20)
                         },
                         completion: {_ in
                            self.auth()
                         })
    }
}
