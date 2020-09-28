//
//  TrailsView.swift
//  BikeTrip
//
//  Created by tooploox on 11/09/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import SwiftUI

struct TrailsView: View {
    var body: some View {
        ZStack {
            Color("myblue")
            VStack {
            Text("HAWAII TRAILS")
                .font(.largeTitle)
                .padding(.vertical, 50)
                List {
                
                NavigationLink(destination: Kauai().navigationBarTitle(Text("Kalalau Trail"), displayMode: .inline)) {
                    Image("Kauai")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, alignment: .leading)
                    Text("Kalalau Trail")
                }
                NavigationLink(destination: StairwayToHeaven().navigationBarTitle(Text("The Stairway to Heaven"), displayMode: .inline)) {
                    Image("StairwayToHeaven")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, alignment: .leading)
                    Text("The Stairway to Heaven")
                }
                NavigationLink(destination: KalepaRidge().navigationBarTitle(Text("Kalepa Ridge"), displayMode: .inline)) {
                    Image("KalepaRidge")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, alignment: .leading)
                    Text("Kalepa Ridge")
                }
                NavigationLink(destination: PaliNotches().navigationBarTitle(Text("Pali Notches"), displayMode: .inline)) {
                    Image("PaliNotches")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, alignment: .leading)
                    Text("Pali Notches")
                }
                NavigationLink(destination: ThreePeaks().navigationBarTitle(Text("Three Peaks"), displayMode: .inline)) {
                    Image("ThreePeaks")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, alignment: .leading)
                    Text("Three Peaks")
                }
                NavigationLink(destination: TomTom().navigationBarTitle(Text("Tom Tom Trail"), displayMode: .inline)) {
                    Image("TomTom")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, alignment: .leading)
                    Text("Tom Tom Trail")
                }
                }
                
                
            }
        } .background(Color("myblue"))
    }
}

struct TrailsView_Previews: PreviewProvider {
    static var previews: some View {
        TrailsView()
    }
}
