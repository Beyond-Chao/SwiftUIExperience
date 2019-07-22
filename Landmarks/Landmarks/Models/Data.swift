//
//  Data.swift
//  Landmarks
//
//  Created by BeyondChao on 2019/7/22.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI
import CoreLocation
import UIKit

let landmarkData: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn`t find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could`t parse \(filename) as \(T.self):\n\(error)")
    }
}

final class ImageStore {
    
}
