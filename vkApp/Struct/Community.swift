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

}
extension Community : Equatable {
    static func == (lhs: Community, rhs: Community) -> Bool {
        lhs.name == rhs.name && lhs.image == rhs.image
    }
}
