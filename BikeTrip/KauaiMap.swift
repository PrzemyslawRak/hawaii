//
//  KauaiMap.swift
//  BikeTrip
//
//  Created by tooploox on 19/08/2020.
//  Copyright © 2020 przemek. All rights reserved.
//

import MapKit
import SwiftUI

struct Pin: Identifiable {
    let id = UUID()
    let label: String
    let location: CLLocationCoordinate2D
}


struct KauaiMap: View {
    @State var region = MKCoordinateRegion(center: .init(latitude: 22.1958872, longitude: -159.6203563), latitudinalMeters: 300, longitudinalMeters: 300)
    var pins = [
        Pin(
            label: "Kalulau trail",
            location: CLLocationCoordinate2D(latitude: 22.1958872, longitude: -159.6203563)
        )
    ]

    
    var body: some View {
        Map(coordinateRegion: $region, interactionModes: .all,
            annotationItems: pins) { pin in
                    
                    MapPin(coordinate: pin.location, tint: .appDarkPink)
                        
        } .scaledToFit()
        .padding(.bottom, 260)
    }
    
}

struct KauaiMap_Previews: PreviewProvider {
    static var previews: some View {
        KauaiMap()
    }
}


