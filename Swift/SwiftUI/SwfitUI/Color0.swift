//
//  Color.swift
//  SwfitUI
//
//  Created by 江逸帆 on 4/21/25.
//

import SwiftUI

struct Color0: View {

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.primary
                // #colorLiteral()
                //Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 10, x: 0, y: 0)
    }
}

#Preview {
    Color0()
}
