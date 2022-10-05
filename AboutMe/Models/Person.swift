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
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            name: "Юрий",
            surname: "Губин",
            company: "птицефабрика Боровская",
            department: "IT департамент",
            position: "IT специалист",
            bio: "Истинный айосер. Характер — нордический, выдержанный. С товарищами по чату поддерживает хорошие отношения. Безукоризненно выполняет свой ученический долг. Беспощаден к ошибкам в коде. Отличный спортсмен: бег, плавание, большой теннис. Холост. В связях, порочащих его, замечен не был. Наградами в сфере разработки приложений пока не отмечен."
        )
    }
}
