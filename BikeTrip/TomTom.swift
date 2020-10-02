//
//  Kauai.swift
//  BikeTrip
//
//  Created by tooploox on 18/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct TomTom: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack (spacing: 20) {
            Image("TomTom")
                .resizable()
                .frame(width: 370, height: 230)
                .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                .shadow(radius: 10)
                .padding(.bottom, 20)
            Image("TomTom1")
                    .resizable()
                .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            Image("TomTom2")
                    .resizable()
                .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            Image("TomTom3")
                    .resizable()
                    .frame(width: 370, height: 230)
                    .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: 10)
                    .padding(.bottom, 20)
            }
            }
            VStack {
                ScrollView {
                Text("Tom Tom Trail, Oahu")
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
                Starting off across from the Makapu’u lookout car park, this relatively simple hike has some of the most stunning views on Oahu. I only did this hike in my last couple of weeks on the Island but then did it twice that week. It is an amazing spot to watch the sunrise and the views are out of this world. I will repeat that because it is a tip you will probably email me after thanking me for. Do this hike for sunrise! Getting to the top only takes about 30-40 minutes so you can get up there half an hour before sunrise, and it is truly one of the best sunrise spots on Oahu.

                There is also a puka (hole in the rock) about 45 minutes of the way in. You can turn back at any point or continue on the trail that does go quite a way. We always turned back at the puka after seeing enough but the trail looks quite good if you chose to continue on. This is one of the most underrated hikes on Oahu.
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

struct TomTom_Previews: PreviewProvider {
    static var previews: some View {
        TomTom()
    }
}
