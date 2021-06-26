//
//  Group.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import Foundation

struct Group: Codable, Hashable {
    let id: Int
    let name: String
    let description: String?
    let imageName: String?
    
    init(id: Int, name: String, description:String? = nil, imageName: String? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.imageName = imageName ?? "defaultGroupImage"
    }
}

struct GroupDataStorage {
    static var groups: [Group] = [
        Group(id: 0, name: "Экзистенциальная философия", description: "Интеллектуальный паблик, посвященный философии.", imageName: "existential"),
        Group(id: 1, name: "Другая философия", description: "Такое вот.", imageName: "other"),
        Group(id: 2, name: "Голожопые философы", description: "Открытая группа.", imageName: "naked"),
        Group(id: 3, name: "Афоризмы великих людей", description: "Какая-то херня с интернета.", imageName: "quote"),
        Group(id: 4, name: "Чоткие философы", description: "Здоровый образ жизни.", imageName: "chotk"),
        Group(id: 5, name: "Двумерные девочки и немецкие философы", description: "Культур-мультур.", imageName: "2d"),
        Group(id: 6, name: "Философия Брюса Ли", description: "Он такой херни не говорил.", imageName: "lee"),
        Group(id: 7, name: "Философия для тупых", description: "Постбыдло.", imageName: "tupoi"),
    ]
    
    static var myGroups: [Group] = groups.filter{$0.id == 3 || $0.id == 7 || $0.id == 6}
}
