//
//  ContentView.swift
//  SwiftUITestProject
//
//  Created by Филипп Степанов on 30.11.2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            UniverseView()
                .tabItem {
                    Text("Feed")
                    Image(systemName: "house.fill")
                }
            LoginView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.fill")
                }
            SliderView()
                .tabItem {
                    Text("Player")
                    Image(systemName: "music.note")
                }
            SettingView()
                .tabItem {
                    Text("Setting")
                    Image(systemName: "gear")
                }
        }
        
    }
    
}
    
struct LoginView: View {
    
    @State private var loginText = ""
    @State private var passwordText = ""
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(.vertical, 150)
            VStack(spacing: 0) {
                TextField("Email or phone", text: $loginText)
                    .padding()
                Divider()
                    .overlay(Color.gray)
                SecureField("Password", text: $passwordText)
                    .padding()
            }
            .background(Color(UIColor.systemGray6))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
            .padding(.horizontal, 30)
            .padding(.bottom,10)
            Button {
                print("Log in")
            } label: {
                Text("Log in")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(12)
                    .padding(.horizontal, 30)
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
