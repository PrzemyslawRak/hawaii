//
//  LoginPage.swift
//  BikeTrip
//
//  Created by tooploox on 31/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI



extension Color {
    public static var appBlue: Color {
        return Color(UIColor(red: 0/255, green: 115/255, blue: 159/255, alpha: 1.0))
    }
    public static var appDarkRed: Color {
        return Color(UIColor(red: 178/255, green: 57/255, blue: 72/255, alpha: 1.0))
    }
    public static var appRed: Color {
        return Color(UIColor(red: 255/255, green: 0/255, blue: 14/255, alpha: 1.0))
    }
    public static var appDarkPink: Color {
        return Color(UIColor(red: 255/255, green: 64/255, blue: 124/255, alpha: 1.0))
    }
    public static var appPink: Color {
        return Color(UIColor(red: 255/255, green: 178/255, blue: 225/255, alpha: 1.0))
    }
}

struct LoginPage: View {
    @State private var emailaddress: String = ""
    @State private var password: String = ""
    @State private var showPassword = false
    var body: some View {
        NavigationView {
            ZStack {
            Color.appBlue
            VStack(spacing: 30) {
            Text("Welcome Back!")
                .font(.largeTitle)
                .padding(.bottom, 50)
                .foregroundColor(.white)
                HStack {
                    Image(systemName: "person")
                    .foregroundColor(.secondary)
        TextField("Login", text: $emailaddress)
            .frame(width: 250, height: 40, alignment: .center)
                } .padding(.leading)
                .background(Capsule().fill(Color.white))
                HStack {
                    Image(systemName: "lock")
                    .foregroundColor(.secondary)
                    if showPassword {
                    TextField("Password", text: $password)
                        .frame(width: 220, height: 40, alignment: .center)
                    } else {
                    SecureField("Password",text: $password)
                        .frame(width: 220, height: 40, alignment: .center)
                    }
                    Button(action: { self.showPassword.toggle()}) {
                        Image(systemName: "eye")
                    .foregroundColor(.secondary)
                            .padding(.trailing, 10)
                                        }
                } .padding(.leading)
                .background(Capsule().fill(Color.white))
                
                HStack(spacing: 50) {
                    NavigationLink (destination: TrailsView().navigationBarBackButtonHidden(true).navigationBarTitle("").navigationBarHidden(true)) {
                        Text("Cancel")
                            .frame(width: 75, height: 10)
                            .foregroundColor(.appPink)
                        
                    }
                    
                        
                    NavigationLink (destination: TrailsView().navigationBarBackButtonHidden(true).navigationBarTitle("").navigationBarHidden(true)) {
                        Text("Login")
                        .frame(width: 75, height: 10)
                        .foregroundColor(.appBlue)
                        .padding()
                        .background(Color.appPink)
                        .cornerRadius(20)
                        
                            
                    } 
                }
            } 
            }
            .edgesIgnoringSafeArea(.all)
            
        }
    }
        
}



struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
