//
//  Background&Overlay.swift
//  SwfitUI
//
//  Created by 江逸帆 on 4/22/25.
//

import SwiftUI

struct Background_Overlay: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //            .frame(width: 100, height: 100, alignment: .center)
                .background(
                    //                Color.red
                    //                LinearGradient(
                    //                    gradient: Gradient(colors: [.red, .blue]),
                    //                    startPoint: .top,
                    //                    endPoint: .bottom
                    //                )
                    Circle()
                        .fill(.blue)
                        .frame(width: 100, height: 100, alignment: .center)
                )
            
                .background(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .padding(30)
            
            // New object
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("69")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .padding(30)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50),
                    alignment: .center
                )
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    , alignment: .center
                )
                .padding(30)
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.purple.opacity(0.8), radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.purple)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                )
                                .shadow(color: Color.purple.opacity(0.8), radius: 10, x: 5, y: 5)
                            , alignment: .bottomTrailing
                        )
                    )
                .padding(30)
        }  // VStack
    }
}

#Preview {
    Background_Overlay()
}
