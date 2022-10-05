//
//  User.swift
//  AboutMe
//
//  Created by Yuriy on 05.10.2022.
//

struct User {
    let username = Person.getPerson().name + " " + Person.getPerson().surname
    let password = "222"
    let person = Person.getPerson()
}
