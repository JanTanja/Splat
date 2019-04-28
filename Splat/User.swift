//
//  User.swift
//  Splat
//
//  Created by Jan Ephraim Nino Tanja on 4/27/19.
//  Copyright © 2019 Jan Ephraim Nino Tanja. All rights reserved.
//

import Foundation

class User {
    var userName: String // ensure this is unique
    var password: String // encrypt
    let chats:[Chat] = []
    init(userName: String, password: String) {
        self.userName = userName
        self.password = password
    }
}
