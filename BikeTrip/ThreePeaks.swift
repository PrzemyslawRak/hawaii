//
//  Kauai.swift
//  BikeTrip
//
//  Created by tooploox on 18/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct ThreePeaks: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack (spacing: 20) {
            Image("ThreePeaks")
                .resizable()
                .frame(width: 370, height: 230)
                .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                .shadow(radius: 10)
                .padding(.bottom, 20)
            Image("ThreePeaks1")
                    .resizable()
                .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            Image("ThreePeaks2")
                    .resizable()
                .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            Image("ThreePeaks3")
                    .resizable()
                    .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            }
            }
            VStack {
                ScrollView {
                Text("Three Peaks, Oahu")
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
                    Text("6 hours")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                                       }
                    VStack {
                    Text("Distance")
                    .font(.system(size: 14))
                    Text("7.1 km")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                    }
                    
                    
                } .padding(.bottom, 20)
                
                
                Text("Description")
                    .font(.headline)
                    .padding(.bottom, 10)
                    .padding(.horizontal)
                
            Text("""
                Also known as Olomana Trail, this is one of the more dangerous hikes on the island. You are probably wondering if there are any safe hikes on the island by now but I just want to stress that you need to respect the mountains. There seem to be so many falls and deaths from hikers on Oahu because of the steep drop-offs on the ridges. There is often not much room for error.

                The first peak is relatively straight-forward despite being a steep incline. Peak two and three provide a challenge and will bring your fear of heights out even if you didn’t know you had one. On a dry day, you should be fine and once you become comfortable you can truly enjoy this amazing trail. I remember looking at the trail from the top of the first peak and just enjoying how incredible it felt to look out over such a beautiful island. Don’t be too proud to call it a day from the first peak, as it is still a great view from there.
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

struct ThreePeaks_Previews: PreviewProvider {
    static var previews: some View {
        ThreePeaks()
    }
}
