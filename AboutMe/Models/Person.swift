//
//  Person.swift
//  AboutMe
//
//  Created by Yuriy on 05.10.2022.
//

struct Person {
    
    let name: String
    let surname: String
    let company: String
    let department: String
    let position: String
    
    static func getPerson() -> Person {
        Person(
            name: "Yuriy",
            surname: "Gubin",
            company: "Poultry Factory Borovskaya",
            department: "IT department",
            position: "IT specialist")
    }
}
