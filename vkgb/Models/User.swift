//
//  User.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import Foundation

struct User {
    let name: String
    let lastname: String
    let imageName: String?
}

struct UserDataStorage {
    static var users: [User] = [
        User(name: "Мартин", lastname: "Хайдеггер", imageName: "Heidegger"),
        User(name: "Фридрих", lastname: "Ницше", imageName: "Nietzsche"),
        User(name: "Артур", lastname: "Шопенгауэр", imageName: "Schopenhauer"),
        User(name: "Федор", lastname: "Достоевский", imageName: "Dostoyevsky"),
        User(name: "Иммануил", lastname: "Кант", imageName: "Kant"),
        User(name: "Альбер", lastname: "Камю", imageName: "Camus"),
        User(name: "Сёрен", lastname: "Кьеркегор", imageName: "Kierkegaard"),
        User(name: "Зигмунд", lastname: "Фрейд", imageName: "Freud"),
        User(name: "Жан-Поль", lastname: "Сартр", imageName: "Sartre")
    ]
}
