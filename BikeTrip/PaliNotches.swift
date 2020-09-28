//
//  Kauai.swift
//  BikeTrip
//
//  Created by tooploox on 18/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct PaliNotches: View {
    var body: some View {
        VStack {
            VStack {
            Image("PaliNotches")
            .resizable()
            .scaledToFit()
            .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
            .shadow(radius: 10)
            .padding(.bottom, 20)
            }
            VStack {
                ScrollView {
                Text("Pali Notches, Oahu")
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
                    Text("1 hour")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                                       }
                    VStack {
                    Text("Distance")
                    .font(.system(size: 14))
                    Text("1.1 km")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                    }
                    
                    
                } .padding(.bottom, 20)
                
                
                Text("Description")
                    .font(.headline)
                    .padding(.bottom, 10)
                    .padding(.horizontal)
                
            Text("""
                Walking along the dangerously steep ridge hike known as Pali Notches, gusts of wind threaten to knock you off either side of the cliff as you skitter up and down intimidating rock faces. This narrow ridge hike requires you to rock climb over the notches, which were supposedly created in the 1700s by King Kamehameha’s warriors to harbor cannons and warriors on the lookout while they kept Nu’uanu Valley secure. Pali Notches is known as being one of the most dangerous hikes on Oahu and many people have fallen while on this trail so take extra caution. It’s one of the closest hikes to the Honolulu downtown area so it’s quick to reach for a sunset mission.

                The trailhead for this hike starts by heading straight up an unmarked trailhead to the right side of the Pali Lookout platform, a popular spot for tourists. You can see the faint trail as soon as you step over the yellow chain fence that encircles the platform. You climb your way through a grove of Hau trees that quickly opens up into an incredible view of the Pali Highway to your left and Kaneohe to your right. Like most trails on Oahu, it is ‘off-limits’ but there aren’t any reports of people getting in trouble for being on Pali Notches, which is one of the best hikes on Oahu.
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

struct PaliNotches_Previews: PreviewProvider {
    static var previews: some View {
        PaliNotches()
    }
}
