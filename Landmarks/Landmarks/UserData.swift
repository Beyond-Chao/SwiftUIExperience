//
//  UserData.swift
//  Landmarks
//
//  Created by BeyondChao on 2019/7/22.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI
import Combine


final class UserData: BindableObject  {
    let willChange = PassthroughSubject<Void, Never>()

    var showFavoritesOnly = false {
        willSet {
            willChange.send()
        }
    }

    var landmarks = landmarkData {
        willSet {
            willChange.send()
        }
    }
}


