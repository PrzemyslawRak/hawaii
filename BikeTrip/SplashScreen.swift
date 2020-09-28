//
//  SplashScreen.swift
//  BikeTrip
//
//  Created by tooploox on 19/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            Image("Aloha")
                
                .resizable()
            //    .scaledToFill()
        }
        .edgesIgnoringSafeArea(.all)
        
     
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
