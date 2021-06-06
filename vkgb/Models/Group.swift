//
//  Group.swift
//  vkgb
//
//  Created by Ярослав on 06.06.2021.
//

import Foundation

struct Group {
    let name: String
    let description: String?
    let imageName: String?
    
    init(name: String, description:String? = nil, imageName: String? = nil) {
        self.name = name
        self.description = description
        self.imageName = imageName ?? "defaultGroupImage"
    }
}

struct GroupDataStorage {
    static var groups: [Group] = [
        Group(name: "Экзистенциальная философия", description: "Интеллектуальный паблик, посвященный философии.", imageName: "existential"),
        Group(name: "Другая философия", description: "Ну такое вот.", imageName: "other"),
        Group(name: "Голожопые философы", description: "Открытая группа.", imageName: "naked"),
        Group(name: "Афоризмы великих людей", description: "Какая-то херня с интернета.", imageName: "quote"),
        Group(name: "Чоткие философы", description: "Здоровый образ жизни.", imageName: "chotk"),
        Group(name: "Двумерные девочки и немецкие философы", description: "Культур-мультур.", imageName: "2d"),
        Group(name: "Философия Брюса Ли", description: "Он такой херни не говорил.", imageName: "lee"),
    ]
}
