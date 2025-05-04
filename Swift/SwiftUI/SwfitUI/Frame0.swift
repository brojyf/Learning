//
//  Frame0.swift
//  SwfitUI
//
//  Created by 江逸帆 on 4/22/25.
//

import SwiftUI

struct Frame0: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(maxWidth: 200, maxHeight: 200, alignment: .center)
            //.frame(width: 300, height: 300, alignment: .topLeading)
            .background(Color.blue)
            .frame(width: 300, height: 300, alignment: .center)
            .background(Color.green)
    }
}

#Preview {
     Frame0()
}
