//
//  ContentView.swift
//  iTakeUp
//
//  Created by Omar Leal on 2/6/23.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewVM()
    
    var body: some View {
        LoginView()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
