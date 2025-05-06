//
//  Padding&Spacer.swift
//  SwfitUI
//
//  Created by 江逸帆 on 4/25/25.
//

import SwiftUI

struct Padding_Spacer: View {
    var body: some View {
        VStack(spacing: 80){
            // Padding
            VStack(alignment: .leading){
                Text("Hello world?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                 
                Text("This is the desciption of what we will do on this screen. It is multple lines and we will alighn the text to the leading edge. ")
            }
            .padding()
            .padding(.vertical, 30)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(
                        color: Color.black.opacity(0.2),
                        radius: 10,
                        x:0, y: 0)
                    )
            .padding()
            
            // Spacer
            VStack(spacing:0) {
                
                Spacer(minLength: nil)
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.red)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.gray)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.purple)
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
            }
            .background(Color.blue)
            
            VStack {
                Spacer()
                HStack{
                    Image(systemName: "xmark")
                    Spacer()
                    Image(systemName: "gear")
                    
                }
                .font(.title)
                .padding(.horizontal)
            }
        
        }
    }
}

#Preview {
    Padding_Spacer()
}
