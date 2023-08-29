//
//  ModelData.swift
//  Landmarks
//
//  Created by 程超超 on 2023/8/29.
//  Copyright © 2023 BeyondChao. All rights reserved.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn`t find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn`t load \(filename) in main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn`t parse \(filename) as \(T.self):\n\(error)")
    }
}
