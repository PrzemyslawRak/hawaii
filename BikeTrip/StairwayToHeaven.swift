//
//  Kauai.swift
//  BikeTrip
//
//  Created by tooploox on 18/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct StairwayToHeaven: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack (spacing: 20) {
            Image("StairwayToHeaven")
                .resizable()
                .frame(width: 370, height: 230)
                .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                .shadow(radius: 10)
                .padding(.bottom, 20)
            Image("StairwayToHeaven1")
                    .resizable()
                .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            Image("StairwayToHeaven2")
                    .resizable()
                .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            Image("StairwayToHeaven3")
                    .resizable()
                    .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            }
            }
            
            VStack {
                ScrollView {
                Text("The Stairway to Heaven, Oahu")
                    .font(.headline)
                    .padding(.vertical)
                
                HStack(spacing: 50){
                    VStack {
                    Text("Difficulty")
                    .font(.system(size: 14))
                    Text("Hard")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                    }
                    VStack {
                    Text("Time needed")
                    .font(.system(size: 14))
                    Text("4 hours")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                                       }
                    VStack {
                    Text("Distance")
                    .font(.system(size: 14))
                    Text("8.3 km")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                    }
                    
                    
                } .padding(.bottom, 20)
                
                
                Text("Description")
                    .font(.headline)
                    .padding(.bottom, 10)
                    .padding(.horizontal)
                
            Text("""
                The Stairway to Heaven also known as the Haiku Stairs on Oahu, Hawaii, is possibly the greatest attraction on the entire island.
                3,922 stairs lead up the imposing mountain ridge, often at a vertical incline, with only a hand-rail to catch you.
                There are many sections that truly do seem like a ladder although with common sense and in fair weather conditions it isn’t as dangerous as it sounds.

                Originally the stairs were built in 1942 by the U.S.
                Navy as a top-secret facility for transmitting radio signals to ships that were sailing in the Pacific Ocean.
                The stairs were then opened to the public until 1987 when they were deemed unsafe because of disrepair.
                This is probably the most famous of all the hikes on Oahu and has been covered by most newspaper outlets.
                Many helicopter rescues and even a few fatalities have occurred on this hike so do proceed with care if you do choose to attempt this ‘illegal’ hike.
                """)
                .padding(.horizontal)
                .foregroundColor(.secondary)
                .font(.system(size: 14))
                }
            }
            
            HStack(spacing: 50) {
                NavigationLink(destination: StairwayToHeavenMap()) {
                    Text("See map!")
                } .padding(.bottom)
                NavigationLink(destination: Booking()) {
                    Text("Book a trip!")
                } .padding(.bottom)
                

            } .padding(.top, 20)
        } .padding(.top, 88)
        .edgesIgnoringSafeArea(.top)
        }
    }

struct StairwayToHeaven_Previews: PreviewProvider {
    static var previews: some View {
        StairwayToHeaven()
    }
}
