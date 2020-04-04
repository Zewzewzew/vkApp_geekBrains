//
//  Community.swift
//  vkApp
//
//  Created by Никита Ананьев on 04.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit
struct Community {
    var name: String
    var subscribers: Int
    var image: UIImage
    init(name: String, subscribers: Int, image: UIImage) {
        self.name = name
        self.subscribers = subscribers
        self.image = image
        return
    }
}
