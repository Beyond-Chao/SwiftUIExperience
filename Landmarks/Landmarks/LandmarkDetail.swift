//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by BeyondChao on 2019/7/22.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                   
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                        Spacer()
                        Text("California")
                            .font(.subheadline)
                    }
            }
            .padding()

            Spacer()
        }
    }
}

#if DEBUG
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
#endif
