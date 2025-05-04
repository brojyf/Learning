//
//  Image.swift
//  SwfitUI
//
//  Created by 江逸帆 on 4/22/25.
//

import SwiftUI

struct Image0: View {
    var body: some View {
        Image("test")
            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 400, height: 300)
            //.clipShape(RoundedRectangle(cornerRadius: 50))
            .foregroundStyle(Color.purple)
    }
}

#Preview {
    Image0()
}
