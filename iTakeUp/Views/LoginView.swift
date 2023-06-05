//
//  LoginView.swift
//  iTakeUp
//
//  Created by Omar Leal on 3/6/23.
//

import SwiftUI

struct LoginView: View {
   
    @StateObject var loginVM = LoginViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack {
                //MARK: Header
                HeaderView(title: "iTakeUp - Todo List",
                           angle: 15,
                           bgColor: .indigo,
                           ftColor: .white
                )
                
                //MARK: Login Form
                LoginForm
                
                // Create Account
                CreateAccount
                Spacer()
                
                
            }
        }
    }
}



//MARK: HEADER VIEW


// MARK: FORM VIEW
extension LoginView {
    var LoginForm: some View {
        Form {
            TextField("Your user email", text: $loginVM.userEmail)
                .textFieldStyle(DefaultTextFieldStyle())
            SecureField("Your password", text: $loginVM.userPassword)
                .textFieldStyle(DefaultTextFieldStyle())
            
            Button {
                print("Hello Niko")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.indigo)
                    Text("Log In")
                        .foregroundColor(.white)
                        .bold()
                }
            }
            .padding()
        }
        
    }
}

extension LoginView {
    var CreateAccount: some View {
        VStack {
            Text("Do not have you an account?")
            NavigationLink("Create An Account", destination: RegisterView())
        }
        .padding(.bottom, 25)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
