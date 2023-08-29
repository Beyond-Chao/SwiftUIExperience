//
//  Landmark.swift
//  Landmarks
//
//  Created by BeyondChao on 2019/7/22.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    
    var isFavorite: Bool = false
    
    var state: String
    var park: String
    var category: String
    
    var locationCoordiante: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                               longitude: coordinates.longitude)
    }
    
//    func image(forSize size: Int) -> Image {
//        ImageStore.shared.image(name: imageName, size: size)
//    }
    
    enum Category: String {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
    
}
