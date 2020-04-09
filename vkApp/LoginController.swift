//
//  ViewController.swift
//  vkApp
//
//  Created by Никита Ананьев on 25.03.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var loginText:UITextField!
    @IBOutlet weak var passwordText:UITextField!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
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
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            switch identifier {
            case "loginSegue":
                let isLoginTrue = login()
                if !isLoginTrue {
                    alertLogin()
                }
                return isLoginTrue
            default:
                return true
            }
    }
    
    func login() -> Bool {
        let login = loginText.text!
        let password = passwordText.text!
        
        return login == "admin" && password == "admin"
    }
    func alertLogin() {
        let alert = UIAlertController(title: "Предупреждение", message: "Неверно введен логин или пароль", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Оке, я попробую еще разок", style: .default))
        
         return self.present(alert, animated: true)
    }
    

}


