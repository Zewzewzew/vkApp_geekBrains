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
    let images: [UIImage]
    
    
    var likeCount:Int
    var repostCount: Int
    var views: Int
    
}

let newsOne = News(user: myFriend[0],
                       timeAgo: "10 минут назад",
                       text: "Поздравляю со светлым праздником Пасхи 💥 \nПусть жизнь наполнится яркими событиями, честными друзьями, позитивным настроением и приятными ощущениями😉",
                       images: [UIImage(named: "Арагорн2")!],
                       likeCount: 13,
                       repostCount: 1,
                       views: 56)


let news = [newsOne]
