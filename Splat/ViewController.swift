//
//  ViewController.swift
//  Splat
//
//  Created by Jan Ephraim Nino Tanja on 4/17/19.
//  Copyright © 2019 Jan Ephraim Nino Tanja. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin

class ViewController: UIViewController {

    // This app will be called Splat :)
    var users:[User] = []
    var chats:[Chat] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var firstUser = User(userName: "username", password: "password")
        let loginButton = LoginButton(readPermissions: [.publicProfile])
        loginButton.center = view.center
        self.view.addSubview(loginButton)
        
    }
    
}

