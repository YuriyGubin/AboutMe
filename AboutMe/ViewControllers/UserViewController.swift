//
//  UserViewController.swift
//  AboutMe
//
//  Created by Yuriy on 05.10.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    private let startColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    private let endColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addGradient(topColor: startColor, bottomColor: endColor)
    }

}
