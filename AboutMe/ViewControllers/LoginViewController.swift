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
    
    private let user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.text = user.username
        passwordTF.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }

        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.name = user.username
            } else if let navigationVC = viewController as? UINavigationController {
                guard let userVC = navigationVC.topViewController as? UserViewController else { return }
                userVC.title = user.username
            } else if let bioVC = viewController as? BioViewController {
                bioVC.bioLabel.text = user.person.bio
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButtonPressed() {
        guard usernameTF.text == user.username, passwordTF.text == user.password else {
            showAlert(
                title: "Incorrect Login or Password 😎",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotButtonsPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Hey there 👋", message: "Your name: \(user.username)")
        : showAlert(title: "Hey there 👋", message: "Your password \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
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

