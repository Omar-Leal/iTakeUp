//
//  RegisterView.swift
//  iTakeUp
//
//  Created by Omar Leal on 3/6/23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var registerVM = RegisterViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Create your account here",
                       angle: -15,
                       bgColor: .white,
                       ftColor: .indigo
                      )
            // Register Form
            RegisterForm
            
            //
            Spacer()
        }
        .background(.indigo)
    }
}


extension RegisterView {
    var RegisterForm: some View {
        Form {
            TextField("Username", text: $registerVM.userName)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .textInputAutocapitalization(.none)
            TextField("New email", text: $registerVM.userEmail)
                .textFieldStyle(DefaultTextFieldStyle())
                .textInputAutocapitalization(.none)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $registerVM.userPassword)
            
            UseFullButton(title: "Create account", bgColor: .green) {
                // Atempt to create account
                
            }
            
        }
    }
}



struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
