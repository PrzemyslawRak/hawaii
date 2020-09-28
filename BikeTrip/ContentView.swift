//
//  ContentView.swift
//  BikeTrip
//
//  Created by tooploox on 18/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showSplash = true
    
    var body: some View {
        ZStack{
            
        LoginPage()
        SplashScreen()
            
            .opacity(showSplash ? 1 : 0)
            .onAppear {
              DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation() {
                  self.showSplash = false
        }
    }
} 
        
        } 
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
