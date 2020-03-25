//
//  ViewController.swift
//  vkApp
//
//  Created by Никита Ананьев on 25.03.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginText:UITextField!
    @IBOutlet weak var passwordText:UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
        
    @IBAction func loginButtonPressed(_ sender: Any) {
        let login = loginText.text!
        let password = passwordText.text!
        
        if login == "admin" && password == "admin" {
            print("Успешная авторизация")
            let alert = UIAlertController(title: "Добро пожаловать", message: "Данные введены верно", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "great", style: .default))
            self.present(alert, animated: true)
            
            
        } else {
            print("Не самая успешная авторизация")
            let alert = UIAlertController(title: "Предупреждение", message: "Неверно введен логин или пароль login: admin, password: admin", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "ok, i will try again", style: .default))


            self.present(alert, animated: true)

        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Жест нажатия
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        // Присваиваем его UIScrollVIew
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Второе — когда она пропадает
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    @objc func keyboardWasShown(notification: Notification) {
           
           // Получаем размер клавиатуры
        
           let info = notification.userInfo! as NSDictionary
           let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
           let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
           
           // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
           self.scrollView?.contentInset = contentInsets
           scrollView?.scrollIndicatorInsets = contentInsets
       }
       
       //Когда клавиатура исчезает
       @objc func keyboardWillBeHidden(notification: Notification) {
           // Устанавливаем отступ внизу UIScrollView, равный 0
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




}

