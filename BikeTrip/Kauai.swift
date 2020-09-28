//
//  Kauai.swift
//  BikeTrip
//
//  Created by tooploox on 18/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct Kauai: View {
    var body: some View {
        VStack {
            VStack {
            Image("Kauai")
                .resizable()
                .scaledToFit()
                .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                .shadow(radius: 10)
                .padding(.bottom, 20)
            }
            VStack {
                Text("Kalalau trail, Kauai")
                    .font(.headline)
                    .padding(.vertical)
                
                HStack(spacing: 50){
                    VStack {
                    Text("Difficulty")
                    .font(.system(size: 14))
                    Text("Medium")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                    }
                    VStack {
                    Text("Time needed")
                    .font(.system(size: 14))
                    Text("10 hours")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                                       }
                    VStack {
                    Text("Distance")
                    .font(.system(size: 14))
                    Text("17.7 km")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                    }
                    
                    
                } .padding(.bottom, 20)
                
                VStack(alignment: .leading) {
                Text("Description")
                    .font(.headline)
                    .padding(.bottom, 10)
                    .padding(.horizontal)
                    
            Text("""
                The Kalalau trail is ultimately the most popular hike on Kauai.
                People come from all around the world to do the trail.
                I had planned to do the trail but high surf and bad weather stopped me from getting there during the time period I had open during my one month in Kauai.
                """)
                .padding(.horizontal)
                .foregroundColor(.secondary)
                .font(.system(size: 14))
                } 
            }
            
            HStack(spacing: 50) {
                NavigationLink(destination: KauaiMap()) {
                    Text("See map!")
                } .padding(.bottom)
                

            } .padding(.top, 20)
            } .padding(.top, -100)
    .edgesIgnoringSafeArea(.top)
        
    }
    }


struct Kauai_Previews: PreviewProvider {
    static var previews: some View {
        Kauai()
    }
}
