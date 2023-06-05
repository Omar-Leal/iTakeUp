//
//  RegisterViewModel.swift
//  iTakeUp
//
//  Created by Omar Leal on 3/6/23.
//

import Foundation


class RegisterViewModel: ObservableObject, RegisterUserProtocol {
    @Published var userEmail: String = ""
    @Published var userName: String = ""
    @Published  var userPassword: String = ""
    
    
    init() {  }
    
}
