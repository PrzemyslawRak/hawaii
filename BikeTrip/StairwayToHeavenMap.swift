//
//  KauaiMap.swift
//  BikeTrip
//
//  Created by tooploox on 19/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import MapKit
import SwiftUI

/*struct Pin: Identifiable {
    let id = UUID()
    let label: String
    let location: CLLocationCoordinate2D
}*/


struct StairwayToHeavenMap: View {
    @State var region = MKCoordinateRegion(center: .init(latitude: 22.1958872, longitude: -159.6203563), latitudinalMeters: 300, longitudinalMeters: 300)
    var pins = [
        Pin(
            label: "Kalulau trail",
            location: CLLocationCoordinate2D(latitude: 22.1958872, longitude: -159.6203563)
        )
    ]

    
    var body: some View {
        VStack {
            Text("The Stairway to Heaven")
                .font(.title)
        Map(coordinateRegion: $region, interactionModes: .all,
            annotationItems: pins) { pin in
                    
                    MapPin(coordinate: pin.location, tint: .appDarkPink)
                    
                        
        }.frame(width: 370, height: 250, alignment: .center) //.scaledToFit()
    }
        Text("Where is the Stairway to Heaven?")
            .font(.headline)
            .padding()
        Text("""
            This map above shows the pin location of the satellite at the top of the stairway to heaven on Oahu. From here you will have to decide on whether you trespass and jump fences or attempt the Stairway to Heaven trail from the back entrance. I highly encourage the latter.
            """)
            .padding(.horizontal)
    }
}

struct StairwayToHeavenMap_Previews: PreviewProvider {
    static var previews: some View {
        StairwayToHeaven()
    }
}


