//
//  Stacks.swift
//  SwfitUI
//
//  Created by 江逸帆 on 4/23/25.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack(alignment: .topLeading, content:{
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.purple)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        })
    }
}

#Preview {
    Stacks()
}
