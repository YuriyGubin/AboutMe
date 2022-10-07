//
//  BioViewController.swift
//  AboutMe
//
//  Created by Yuriy on 05.10.2022.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    
    var user: User!
    
    private let startColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    private let endColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName) Bio"
        view.addGradient(topColor: startColor, bottomColor: endColor)
        bioLabel.text = user.person.bio
    }
}
