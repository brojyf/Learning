//
//  TextBootcamp.swift
//  SwfitUI
//
//  Created by 江逸帆 on 3/30/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!\nThis is a multiline text".capitalized)
//            .font(.largeTitle)
//            .fontWeight(.heavy)
//            .bold()
//            .italic()
//            .underline(true, color: .red)
//            .strikethrough(true, color: .blue)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
//            .baselineOffset(10)  negative -> space above
//            .kerning(2)  // Between each letter
            .multilineTextAlignment(.leading)
//            .foregroundColor(Color.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.5)    // Minimum size -> frame
    }
}

#Preview {
    TextBootcamp()
}
