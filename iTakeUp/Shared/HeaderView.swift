//
//  HeaderView.swift
//  iTakeUp
//
//  Created by Omar Leal on 4/6/23.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
   // let subtitle: String
    let angle: Double
    let bgColor: Color
    let ftColor: Color
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(bgColor)
                .rotationEffect(Angle(degrees: angle))
                .offset(y: -100)
            VStack {
                Text(title)
                    .bold()
                    .font(.system(size: 30))
                    .foregroundColor(ftColor)
            }
            .offset(y: -100)
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Hello Omar", angle: -15, bgColor: .black, ftColor: .pink)
    }
}
