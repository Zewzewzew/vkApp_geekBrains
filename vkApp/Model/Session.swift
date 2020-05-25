//
//  Session.swift
//  vkApp
//
//  Created by Никита Ананьев on 25.05.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit
class Session {
    private init(){}
    static let instance = Session()

    var token = ""
    var userId = 0
}
