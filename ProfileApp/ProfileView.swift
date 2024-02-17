//
//  ProfileView.swift
//  ProfileApp
//
//  Created by Austin Xu on 2024/2/17.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(alignment: .center){
                VStack(alignment: .center){
                    Image("my_profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 150)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Pyae Phyo Aung")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
//                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("iOS Developer")
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    HStack(spacing: 20){
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Image(systemName: "globe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    }.foregroundStyle(.white)
                        .padding()
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 150, height: 50)
                        .foregroundStyle(.white)
                        .overlay(
                            Text("Follow")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundStyle(.pink)
                            
                        )
                        .padding(.vertical)
                }
                Spacer().frame(height: 20)
                VStack(alignment: .center){
                    HStack(alignment: .center, spacing: 30){
                        VStack{
                            Text("300")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Appreciations")
                                .opacity(0.5)
                        }
                        VStack{
                            Text("10")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Followers")
                                .opacity(0.5)
                        }
                        VStack{
                            Text("3")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Contributions")
                                .opacity(0.5)
                        }
                    }.padding()
                    
                    Text("About Me")
                        .font(.system(size: 30))
                    Text("I'm a computer science student who studies at Assumption University of Thailand")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 25)
                        .opacity(0.5)
                    
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ProfileView()
}
