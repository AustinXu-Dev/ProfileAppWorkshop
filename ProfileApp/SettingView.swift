//
//  SettingView.swift
//  ProfileApp
//
//  Created by Austin Xu on 2024/2/17.
//

import SwiftUI

struct SettingView: View {
    
    @State private var username:String = ""
    @State private var password:String = ""
    @State private var isEnabled:Bool = false
    @State private var myGender: String = "Male"
    @State private var date: Date = Date.now
    @State private var job: String = "iOS Developer"
    @State private var email: String = ""
    @State private var description: String = ""
    @State private var appreciation: Int = 0
    @State private var follower: Int = 0
    @State private var contribution: Int = 0
    
    var genders = ["Male", "Female"]
    var jobs = ["iOS Developer", "Web Developer", "Software Engineer"]
    
    var body: some View {
        NavigationStack{
            Form{
                Section {
                    TextField("Username", text: $username)
                        .disabled(isEnabled)
                    SecureField("Password", text: $password)
                        .disabled(isEnabled)
                    Toggle("Lock Text Field", isOn: $isEnabled)

                } header: {
                    Text("Profile")
                }
                
                Section {
                    Picker("Gender", selection: $myGender) {
                        ForEach(genders, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                    
                    DatePicker("Birthday", selection: $date, displayedComponents: .date).datePickerStyle(.compact)
                    
                    Picker("Select your job", selection: $job) {
                        ForEach(jobs, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.navigationLink) // Picker Style
                    
                    
                    TextField("Enter your email", text: $email)
                    TextField("Write your description", text: $description)
                        .lineLimit(4)
                } header: {
                    Text("Other Info")
                }
                
                Section {
                    Stepper("Appreciations \(appreciation)", value: $appreciation)
                    Stepper("Followers \(follower)", value: $follower)
                    Stepper("Contributions \(contribution)", value: $contribution)
                } header: {
                    Text("Social")
                }

                Button(action: {
                    print(username, password, myGender, date, job, email, description, appreciation, follower, contribution)
                    
                }, label: {
                    Text("Save")
                })
                
                // MARK: This goes to a new profile view with binding variable
                
                NavigationLink {
                    NewProfileView(username: $username, jobTitle: $job, description: $description, appreciation: $appreciation, follower: $follower, contribution: $contribution)
                } label: {
                    Text("Save your profile")
                }

            }
            
            .navigationTitle("Setting")
        } // End of navigation stack
    }
}

#Preview {
    SettingView()
}
