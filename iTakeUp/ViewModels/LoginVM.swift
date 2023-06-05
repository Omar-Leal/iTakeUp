//
//  LoginViewModel.swift
//  iTakeUp
//
//  Created by Omar Leal on 3/6/23.
//

import Foundation


class LoginViewModel:  UserLoginProtocol ,ObservableObject {
    var userEmail: String = ""
    var userPassword: String = ""
    
    init() {
        
    }
    
    func login() {
        print("login this user")
    }
    
    func validate() {
        print("validation")
    }
}
