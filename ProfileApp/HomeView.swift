//
//  HomeView.swift
//  ProfileApp
//
//  Created by Austin Xu on 2024/2/17.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Hello, World!")
        Text("Pyae Phyo Aung")
        VStack(alignment: .center, spacing: 10){
            Circle()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
                .overlay(
                    Text("Circle")
                        .foregroundStyle(.white)
                        .font(.system(size: 30, weight: .bold))
                )
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100, height: 100)
            
            HStack{
                Text("Cirlce")
                Spacer()
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
            }.padding(.horizontal)
            
            Image(systemName: "house")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
            Image(systemName: "rectangle.on.rectangle.square.fill")
                .resizable()
                .frame(width: 50, height: 50)
            Image("my_profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            Button(action: {
                print("The button works")
            }, label: {
                Text("Button")
            })
        }
    }
}

#Preview {
    HomeView()
}
