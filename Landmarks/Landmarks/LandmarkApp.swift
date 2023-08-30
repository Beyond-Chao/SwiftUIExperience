//
//  LandmarkApp.swift
//  Landmarks
//
//  Created by BeyondChao on 2023/8/29.
//  Copyright © 2023 BeyondChao. All rights reserved.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
