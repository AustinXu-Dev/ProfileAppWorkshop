//
//  StateView.swift
//  ProfileApp
//
//  Created by Austin Xu on 2024/2/17.
//

import SwiftUI

struct StateView: View {
    @State var count = 0
    @State var text = ""
    
    var body: some View {
        Text("Count \(count)")

        Button(action: {
            count += 1
        }, label: {
            Text("Increment")
        })
        
        VStack{
            Text("You entered \(text)")
            TextFieldView(text: $text)
        }
    }
}

struct TextFieldView: View{
    
    @Binding var text: String
    
    var body: some View{
        TextField("Enter Text", text: $text)
    }
}

#Preview {
    StateView()
}
