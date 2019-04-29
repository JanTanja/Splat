//
//  AccountManagement.swift
//  Splat
//
//  Created by Jan Ephraim Nino Tanja on 4/28/19.
//  Copyright © 2019 Jan Ephraim Nino Tanja. All rights reserved.
//

import Foundation


class DataAcquisition {
    
    var users:[User] = []
    var chats:[Chat] = []
    static func createAccount() {
        
    }
}
class LoginHandler {
    static func checkUserNameExists(input: String) -> Bool {
        // let's check if their username is in the database!
        if input.isEmpty {return false}
        let userNameExists: Bool = true
        return userNameExists
    }
    static func checkPasswordExists(input: String) -> Bool {
        if input.isEmpty {return false}
        let passwordExists: Bool = true
        return passwordExists
    }
}
