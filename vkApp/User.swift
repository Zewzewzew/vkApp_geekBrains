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
    
    init(userName: String, userImage: UIImage) {
        self.userName = userName
        self.userImage = userImage
        return
        
    }
}
