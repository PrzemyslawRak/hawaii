//
//  Kauai.swift
//  BikeTrip
//
//  Created by tooploox on 18/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct KalepaRidge: View {
    var body: some View {
        VStack {
            VStack {
            Image("KalepaRidge")
            .resizable()
            .scaledToFit()
            .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
            .shadow(radius: 10)
            .padding(.bottom, 20)
            }
            VStack {
                ScrollView {
                Text("Kalepa Ridge, Kauai")
                    .font(.headline)
                    .padding(.vertical)
                
                HStack(spacing: 50){
                    VStack {
                    Text("Difficulty")
                    .font(.system(size: 14))
                    Text("Easy")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                    }
                    VStack {
                    Text("Time needed")
                    .font(.system(size: 14))
                    Text("30 minutes")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                                       }
                    VStack {
                    Text("Distance")
                    .font(.system(size: 14))
                    Text("3.1 km")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                    }
                    
                    
                } .padding(.bottom, 20)
                
                
                Text("Description")
                    .font(.headline)
                    .padding(.bottom, 10)
                    .padding(.horizontal)
                
            Text("""
                Kalepa Ridge Trail is one of the most epic cliff trails on Kauai. It’s only a short hike taking about 30 minutes until you reach the viewpoint.
                The cliff trail becomes very narrow and the path can be crumbly so this is a hike for experienced hikers only.

                You will have views over Kalalau Valley and even down into Cathedral’s, which is the most famous section of the Na Pali coastline. If you are looking for a quick sunset spot then this is one of the best hikes on Kauai to catch that golden hour glow on the ridges.

                The night I visited Kalepa Ridge, the clouds parted just in time for the sun to light up the remaining fog in a golden glow, while the ocean still beamed blue. Looking down the ridge while all of this was going on is a moment I’ll never forget.
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
        } .padding(.top, 88)
        .edgesIgnoringSafeArea(.top)
        }
    }

struct KalepaRidge_Previews: PreviewProvider {
    static var previews: some View {
        KalepaRidge()
    }
}
