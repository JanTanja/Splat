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
    @IBOutlet weak var userNameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // log-in
        var _ = User(userName: "username", password: "password")
        let loginButton = LoginButton(readPermissions: [.publicProfile])
        loginButton.center = view.center
        loginButton.frame = CGRect(x: loginButton.center.x - (loginButton.frame.size.width / 2), y: loginButton.center.y + 100, width: loginButton.frame.size.width, height: loginButton.frame.size.height)
        
        self.view.addSubview(loginButton)
        
    }
    @IBAction func pressedLoginButton(_ sender: UIButton) {
        
        if (LoginHandler.checkUserNameExists(input: self.userNameInput.text!) && LoginHandler.checkPasswordExists(input: self.passwordInput.text!)) {
            // you can do segue
            self.performSegue(withIdentifier: "loginSuccessfulSegue", sender: self)
            print("Correct login! :)")
        }
        else {
            // render a message saying that you cannot proceed
            print("Incorrect username or password -- please try again!")
        }
    }
    
}

