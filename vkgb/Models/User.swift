//
//  User.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import Foundation

struct User {
    let id: Int
    let name: String
    let lastname: String
    let imageName: String?
    
    init(id: Int, name: String, lastname:String, imageName: String? = nil) {
        self.id = id
        self.name = name
        self.lastname = lastname
        self.imageName = imageName ?? "defaultAvatar"
    }
}

struct UserDataStorage {
    static var users: [User] = [
        User(id: 0, name: "Мартин", lastname: "Хайдеггер", imageName: "Heidegger"),
        User(id: 1, name: "Фридрих", lastname: "Ницше", imageName: "Nietzsche"),
        User(id: 2, name: "Артур", lastname: "Шопенгауэр", imageName: "Schopenhauer"),
        User(id: 3, name: "Фёдор", lastname: "Достоевский", imageName: "Dostoyevsky"),
        User(id: 4, name: "Карл", lastname: "Юнг", imageName: "Jung"),
        User(id: 5, name: "Иммануил", lastname: "Кант", imageName: "Kant"),
        User(id: 6, name: "Альбер", lastname: "Камю", imageName: "Camus"),
        User(id: 7, name: "Людвиг", lastname: "Витгенштейн"),
        User(id: 8, name: "Сёрен", lastname: "Кьеркегор", imageName: "Kierkegaard"),
        User(id: 9, name: "Зигмунд", lastname: "Фрейд", imageName: "Freud"),
        User(id: 10, name: "Жан-Поль", lastname: "Сартр", imageName: "Sartre"),
        User(id: 11, name: "Карл", lastname: "Ясперс"),
    ]
}
