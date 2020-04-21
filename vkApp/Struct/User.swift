//
//  User.swift
//  vkApp
//
//  Created by Никита Ананьев on 03.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit
let myFriend = [User(userName: "Арагорн", userImage: UIImage(named: "Арагорн")!,userPhotos: aragornPhotos),
                 User(userName: "Аватар Аанг", userImage: UIImage(named: "Аватар Аанг")!,userPhotos:avatarAangPhotos),
                 User(userName: "Джон Уик", userImage: UIImage(named: "Джон Уик")!,userPhotos:johnWickPhotos),
                 User(userName: "Тралл", userImage: UIImage(named: "Тралл")!,userPhotos:trallPhotos),
                 User(userName: "Клифф Бут", userImage: UIImage(named: "Клифф Бут")!,userPhotos:cliffBootPhotos),
                 User(userName: "Ктулху", userImage: UIImage(named: "Ктулху")!,userPhotos:ctulhuPhotos)]
struct User {
    let userName:String
    let userImage:UIImage
    let userPhotos:[UIImage]
    
}



    
        
        
var aragornPhotos:[UIImage] = [(UIImage(named:"Арагорн")!),
                                 (UIImage(named:"Арагорн2")!),
                                 (UIImage(named:"Арагорн3")!),
                                 (UIImage(named:"Арагорн4")!),
                                 (UIImage(named:"Арагорн5")!)]
  
  var avatarAangPhotos:[UIImage] = [(UIImage(named:"Аватар Аанг")!),
                                    (UIImage(named:"Аватар Аанг2")!),
                                    (UIImage(named:"Аватар Аанг3")!),
                                    (UIImage(named:"Аватар Аанг4")!),
                                    (UIImage(named:"Аватар Аанг5")!)]
  var johnWickPhotos:[UIImage] = [(UIImage(named:"Джон Уик")!),
                                    (UIImage(named:"Джон Уик2")!),
                                    (UIImage(named:"Джон Уик3")!),
                                    (UIImage(named:"Джон Уик4")!),
                                    (UIImage(named:"Джон Уик5")!)]
  var trallPhotos:[UIImage] = [(UIImage(named:"Тралл")!),
                                    (UIImage(named:"Тралл2")!),
                                    (UIImage(named:"Тралл3")!),
                                    (UIImage(named:"Тралл4")!),
                                    (UIImage(named:"Тралл5")!)]
  var cliffBootPhotos:[UIImage] = [(UIImage(named:"Клифф Бут")!),
                                    (UIImage(named:"Клифф Бут2")!),
                                    (UIImage(named:"Клифф Бут3")!),
                                    (UIImage(named:"Клифф Бут4")!),
                                    (UIImage(named:"Клифф Бут5")!)]
  var ctulhuPhotos:[UIImage] = [(UIImage(named:"Ктулху.jpg")!),
                                    (UIImage(named:"Ктулху2")!),
                                    (UIImage(named:"Ктулху3")!),
                                    (UIImage(named:"Ктулху4")!),
                                    (UIImage(named:"Ктулху5")!)]



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






extension User : Equatable {
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.userName == rhs.userName && lhs.userName == rhs.userName
    }
}


