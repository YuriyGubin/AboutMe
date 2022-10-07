//
//  UserViewController.swift
//  AboutMe
//
//  Created by Yuriy on 05.10.2022.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    @IBOutlet var avatarImage: UIImageView! {
        didSet {
            avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
        }
    }
    
    var user: User!
    
    private let startColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    private let endColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient(topColor: startColor, bottomColor: endColor)
        title = user.person.fullName
        setupLabels()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
    
    private func setupLabels() {
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        avatarImage.image = UIImage(named: user.person.photo)
        companyLabel.text = user.person.job.title
        departmentLabel.text = user.person.job.department.rawValue
        positionLabel.text = user.person.job.jobTitle.rawValue
    }

}
