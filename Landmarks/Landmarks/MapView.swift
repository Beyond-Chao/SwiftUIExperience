//
//  MapView.swift
//  Landmarks
//
//  Created by 程超超 on 2023/8/29.
//  Copyright © 2023 BeyondChao. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 30.243749, longitude: 120.182488),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
