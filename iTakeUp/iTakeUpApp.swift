//
//  iTakeUpApp.swift
//  iTakeUp
//
//  Created by Omar Leal on 2/6/23.
//
import FirebaseCore
import SwiftUI


@main
struct iTakeUpApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    
    
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
