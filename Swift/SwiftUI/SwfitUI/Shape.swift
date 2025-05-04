//
//  Shape.swift
//  SwfitUI
//
//  Created by 江逸帆 on 3/30/25.
//

import SwiftUI


struct Shape: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 180)
//            .fill(skyBlue)
//            .foregroundColor(.red)  the same as above
//            .stroke()
//            .stroke(skyBlue, lineWidth: 5)
//            .stroke(skyBlue, style:
//                StrokeStyle(
//                    lineWidth: 25,
//                    lineCap: .butt,
//                    dash: [30]
//                )
//            )
//            .trim(from: 0.2, to: 1)
//            .stroke(skyBlue, lineWidth: 50)
            .frame(width: 300, height: 200)
        
        
        
    }
}

#Preview {
    Shape()
}
