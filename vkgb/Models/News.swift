//
//  News.swift
//  vkgb
//
//  Created by Ярослав on 19.06.2021.
//

import Foundation

struct News {
    let id: Int
    let userId: Int
    let date: String
    let text: String
    let imageName: String?
    let likesCount: Int
    let likedByMe: Bool
    let viewsCount: Int
    
    init(id: Int, userId: Int, text: String, imageName: String? = nil, likesCount: Int, likedByMe: Bool, viewsCount: Int) {
        self.id = id
        self.userId = userId
        
        self.date = { () -> String in
            let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy"
            return formatter.string(from: Date())
        }()
        
        self.text = text
        self.imageName = imageName
        
        self.likesCount = likesCount
        self.likedByMe = likedByMe
        self.viewsCount = viewsCount
        
    }
}

struct NewsDataStorage {
    static var news: [News] = [
        News(id: 0, userId: 8, text: "Повесься, ты пожалеешь об этом; не повесься, ты и об этом пожалеешь, в том и другом случае ты пожалеешь об этом. Таково, милостивые государи, резюме всей жизненной мудрости.", imageName: "hang.jpg", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),
        
        News(id: 1, userId: 9, text: "Культурный человек возможность счастья променял на гарантированную безопасность.", imageName: "frr", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),
        
        News(id: 2, userId: 4, text: "Депрессия подобна даме в черном. Если она пришла, не гони ее прочь, а пригласи к столу как гостью и послушай то, о чем она намерена сказать.", imageName: "wib", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),
        
        News(id: 3, userId: 4, text: "Отсутствие смысла в жизни играет критическую роль в этиологии невроза. В конечном счёте невроз следует понимать как страдание души, не находящей своего смысла... Около трети моих случаев – это страдание не от какого-то клинически определимого невроза, а от бессмысленности и бесцельности собственной жизни.", imageName: "moflife", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),
        
        News(id: 4, userId: 6, text: "Современное западное общество абсурдно, потому что не может предложить европейцу ни одной ценности, которую тот мог бы принять как свою собственную. Вся система ценностей, принятая на Западе, противоречит истинным потребностям внутреннего мира личности и очень скоро приводит человека западной цивилизации к мысли об абсурдности своего существования и, как следствие, — к самоубийствам.", imageName: "camus2", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),
        
        News(id: 5, userId: 8, text: "Что будет? Что принесет грядущее? Я этого не знаю, я ни о чем не догадываюсь. Когда паук, потеряв точку опоры, срывается в неизвестность последствий, он неизменно видит перед собой пустое пространство, где не за что зацепиться, сколько ни барахтайся. Вот так и со мною; впереди неизменно пустое пространство, а то, что гонит меня вперед, есть последствие, оставленное позади. Эта жизнь лишена смысла и ужасна, невыносима.", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),
        
        News(id: 6, userId: 6, text: "Вы никогда не будете счастливы, если будете продолжать искать, в чем заключается счастье. И вы никогда не будете жить, если ищете смысл жизни.", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),
        
        News(id: 7, userId: 1, text: "Кто сражается с чудовищами, тому следует остерегаться, чтобы самому при этом не стать чудовищем. И если ты долго смотришь в бездну, то бездна тоже смотрит в тебя.", imageName: "monster", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),
        
        News(id: 8, userId: 3, text: "Знаете ли, что весьма многие люди больны именно своим здоровьем, то есть непомерной уверенностью в своей нормальности, и тем самым заражены страшным самомнением, бессовестным самолюбованием, доходящим иной раз чуть ли не до убеждения в своей непогрешимости. Ну вот на таких-то мне и случалось много раз указывать моим читателям и даже, может быть, доказать, что эти здоровяки далеко не так здоровы, как думают, а, напротив, очень больны, и что им надо идти лечиться.", imageName: "insane", likesCount: Int.random(in: 9...99), likedByMe: false, viewsCount: Int.random(in: 99...9999)),

    ]
}
