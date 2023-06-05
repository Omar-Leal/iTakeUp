//
//  UseFullButton.swift
//  iTakeUp
//
//  Created by Omar Leal on 4/6/23.
//

import SwiftUI

struct UseFullButton: View {
    
    let title: String
    let bgColor: Color
    let action: () -> Void
    
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(bgColor)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
            .padding()
        }
    }
}

struct UseFullButton_Previews: PreviewProvider {
    static var previews: some View {
        UseFullButton(
            title: "Atom Button", bgColor: .green, action: {
                print("Generic Clouser")
            }
        )
    }
}
