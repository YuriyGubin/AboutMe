//
//  User.swift
//  AboutMe
//
//  Created by Yuriy on 05.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "iosdev",
            password: "123",
            person: Person.getPerson()
        )
    }
}

struct Person {
    
    let name: String
    let surname: String
    let photo: String
    let job: Company
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Юрий",
            surname: "Губин",
            photo: "Unknown",
            job: Company.getCompany(),
            bio: "Истинный айосер. Характер — нордический, выдержанный. С товарищами по чату поддерживает хорошие отношения. Безукоризненно выполняет свой ученический долг. Беспощаден к ошибкам в коде. Отличный спортсмен: бег, плавание, большой теннис. Холост. В связях, порочащих его, замечен не был. Наградами в сфере разработки приложений пока не отмечен."
        )
    }
}

struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
        title: "птицефабрика Боровская",
        jobTitle: .specialist,
        department: .itDepartment
        )
    }
}

enum JobTitle: String {
    case specialist = "IT специалист"
    case head = "IT Head"
}

enum Department: String {
    case itDepartment = "IT отдел"
    case management = "Менеджмент"
}

