//
//  SystemIcon.swift
//  SwfitUI
//
//  Created by 江逸帆 on 4/22/25.
//

// SF Symbols
import SwiftUI

struct SystemIcon: View {
    var body: some View {
        //Image(systemName: "paperplane.fill")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
        
            .resizable()
            //.aspectRatio(contentMode: .fit)
            //.sacledToFill()
            .scaledToFill()
            //.font(.caption)
            .font(.system(size: 200))
            .foregroundColor(Color.purple)
            .frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    SystemIcon()
}
