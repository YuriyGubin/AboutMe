//
//  LoginViewController.swift
//  AboutMe
//
//  Created by Yuriy on 04.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let username = "123"
    private let password = "123"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
    }

    @IBAction func loginButtonPressed() {
        guard usernameTF.text == username, passwordTF.text == password else {
            showAlert(
                title: "Incorrect Login or Password 😎",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
    }
    
    @IBAction func forgotButtonsPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Hey there 👋", message: "Your name: \(username)")
        : showAlert(title: "Hey there 👋", message: "Your password \(password)")
    }
}

extension LoginViewController {
    func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
