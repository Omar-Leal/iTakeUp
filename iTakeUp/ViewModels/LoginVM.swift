//
//  LoginViewModel.swift
//  iTakeUp
//
//  Created by Omar Leal on 3/6/23.
//
import FirebaseAuth
import Foundation


class LoginViewModel:  UserLoginProtocol ,ObservableObject {
    @Published var userEmail: String = ""
    @Published var userPassword: String = ""
    @Published var errorMessage: String = ""
    
    
    init() {
        
    }
    
    func login() {
        guard validate() else { return }
        
       // Try to log in with Firebase
        Auth.auth().signIn(withEmail: userEmail, password: userPassword)
    
       
    }
    
    func validate() -> Bool {
        errorMessage = ""
        guard  !userEmail.trimmingCharacters(in: .whitespaces).isEmpty,
               !userPassword.trimmingCharacters(in: .whitespaces).isEmpty
        else {
              errorMessage = "You have to fill all the field"
                return false
            }
        
        guard userEmail.contains("@") &&  userEmail.contains(".") else {
            errorMessage = "Enter a valid email"
            return false
        }
        
        guard userPassword.count >= 6 else {
            errorMessage = "Your password must have 6 character at minimun"
            return false
        }
        return true
    }
}
