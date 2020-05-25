//
//  FriendNews.swift
//  vkApp
//
//  Created by Никита Ананьев on 20.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

struct News {
    let user: User
    let timeAgo: String
    let text: String
    let image: UIImage
    
    var likeCount:Int
    var repostCount: Int
    var views: Int
    
}

let newsOne = News(user: myFriend[0],
                       timeAgo: "10 минут назад",
                       text: "Поздравляю со светлым праздником Пасхи 💥 \nПусть жизнь наполнится яркими событиями, честными друзьями, позитивным настроением и приятными ощущениями😉",
                       image: UIImage(named: "Арагорн2")!,
                       likeCount: 13,
                       repostCount: 1,
                       views: 56)
let newsTwo = News(user: myFriend[1],
                   timeAgo: "25 минут назад",
                   text: "Для тех, кому всегда хочется большего. Распродажа «Больше впечатлений» с сезонными абонементами и дополнениями продлится до 28 мая в PlayStation Store: https://bit.ly/3bqRhj6",
                   image: UIImage(named: "Петросян")!,
                   likeCount: 420,
                   repostCount: 20,
                   views: 25309)


let news: [News] = [newsOne, newsTwo]
