//
//  User.swift
//  vkApp
//
//  Created by Никита Ананьев on 03.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

struct User {
    let userName:String
    let userImage:UIImage
    let userPhotos:[UIImage]
}

extension User : Equatable {
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.userName == rhs.userName && lhs.userName == rhs.userName
    }
}

func friendsNamesDictionary(user: [User]) -> ([String: [User]]) {
    var namesArray:[String] = []
    for i in user{
        namesArray.append(i.userName)
        
    }
        namesArray.sort()
        let dictionary = Dictionary.init(grouping: user, by: {String($0.userName.first!)})
        return dictionary
    }

    var friendDictionary = friendsNamesDictionary(user: myFriend)
    var friendKeysInDictionary = friendDictionary.keys.compactMap{String($0.first!)}.sorted(by: { $0 < $1 })
    var friendsInSection = [User]()








