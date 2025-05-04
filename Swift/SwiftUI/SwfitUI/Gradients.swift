//
//  Gradients.swift
//  SwfitUI
//
//  Created by 江逸帆 on 4/21/25.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.indigo
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.purple, Color.blue]),
//                    startPoint: .leading,
//                    endPoint: .trailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.purple, Color.blue]),
//                    center: .topLeading,
//                    startRadius: 15 ,
//                    endRadius: 200)
//            )
            AngularGradient(
                gradient: Gradient(colors: [Color.red, Color.purple]),
                center: .topLeading,
                angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
            .shadow(radius: 5)
    }
}

#Preview {
    Gradients()
}
