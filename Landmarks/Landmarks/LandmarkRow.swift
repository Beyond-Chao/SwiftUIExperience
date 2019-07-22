//
//  Row.swift
//  Landmarks
//
//  Created by BeyondChao on 2019/7/22.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            Text(landmark.name)
        }
    }
}

#if DEBUG
struct Row_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
#endif
