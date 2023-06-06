//
//  RegisterViewModel.swift
//  iTakeUp
//
//  Created by Omar Leal on 3/6/23.
//
import FirebaseAuth
import Foundation


class RegisterViewModel: ObservableObject, RegisterUserProtocol {
    @Published var userEmail: String = ""
    @Published var userName: String = ""
    @Published  var userPassword: String = ""
    @Published var errorMessage: String  = ""
    
    init() {  }
    
    func createNewUser() {
        guard validate() else { return }
        
       // MARK: Creating a User
        Auth.auth().createUser(withEmail: userEmail, password: userPassword) { [ weak self ] newUser, error in
            guard let userId = newUser?.user.uid else {
                return
                
            }
            
            self?.insertUserRecord(userId: userId)
                    
        }
        
    }
    
    // Creating own our module for user
    
    private func insertUserRecord(userId: String) {
        
    }
    
    func validate() -> Bool {
        guard !userName.trimmingCharacters(in: .whitespaces).isEmpty,
              !userEmail.trimmingCharacters(in: .whitespaces).isEmpty,
              !userPassword.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = "Please, fill all the fields"
            return false
        }
        
        guard userEmail.contains("@") && userEmail.contains(".") else {
            errorMessage = "Please enter a valid email"
            return false
        }
        
        guard userName.count > 3 else {
            errorMessage = "Set a good userName"
            return false
        }
        
        guard userPassword.count >= 6 else {
            errorMessage = "Your password must have 6 character at minimun"
            return false
        }
        
        return true
    }
    
}
