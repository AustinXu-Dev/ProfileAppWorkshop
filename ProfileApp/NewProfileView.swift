//
//  NewProfileView.swift
//  CardTesting
//
//  Created by Austin Xu on 2024/2/15.
//

import SwiftUI

struct NewProfileView: View {
    @Binding var username: String
    @Binding var jobTitle: String
    @Binding var description: String
    @Binding var appreciation: Int
    @Binding var follower: Int
    @Binding var contribution: Int
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 10){
                VStack(alignment: .center){
                    Image("my_profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 150)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x:5, y:5)
                    Text(username)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .shadow(radius: 5, x:5, y:5)
                    Text(jobTitle)
                        .font(.headline)
                        .foregroundStyle(.white)
                    HStack(spacing: 20){
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "globe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }.foregroundStyle(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .padding()
                    
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 150, height: 50)
                        .foregroundStyle(.white)
                        .overlay(
                            Text("Follow")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundStyle(.pink)
                        )
                        .padding(.vertical)
                }

                VStack(alignment: .center){
                    
                    HStack(alignment: .center, spacing: 30){
                        VStack(alignment: .center){
                            Text("\(appreciation)")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Appreciations")
                                .opacity(0.5)
                        }
                        VStack(alignment: .center){
                            Text("\(follower)")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Followers")
                                .opacity(0.5)
                        }
                        VStack(alignment: .center){
                            Text("\(contribution)")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Contributions")
                                .opacity(0.5)
                        }
                    }
                    Spacer().frame(height: 30)
                    Text("About Me")
                        .font(.system(size: 30))
                    Spacer().frame(height: 30)
                    Text(description)
                        .padding(.horizontal, 25)
                        .multilineTextAlignment(.center)
                        .opacity(0.7)
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    NewProfileView(username: .constant("Austin Xu"), jobTitle: .constant("iOS Developer"), description: .constant("I'm a student who studies at Assumption University as computer science major."), appreciation: .constant(300), follower: .constant(3), contribution: .constant(5))
}
