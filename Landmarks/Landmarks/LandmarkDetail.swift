//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by BeyondChao on 2019/7/22.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI

//struct LandmarkDetail: View {
//    var landmark: Landmark
//    
//    @EnvironmentObject var userData: UserData
//    
//    var landmarkIndex: Int {
//        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
//    }
//    
//    var body: some View {
//        VStack {
//            
//            MapView(coordinate: landmark.locationCoordiante)
//                .edgesIgnoringSafeArea(.top)
//                .frame(height: 300)
//            
//            CircleImage(image: landmark.image(forSize: 250))
//                .offset(x: 0, y: -130)
//                .padding(.bottom, -130)
//            
//            VStack(alignment: .leading) {
//                HStack {
//                    Text(landmark.name)
//                        .font(.title)
//                   
//                    Button(action: {
//                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
//                    }) {
//                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
//                            Image(systemName: "star.fill")
//                                .foregroundColor(.yellow)
//                        } else {
//                            Image(systemName: "star")
//                                .foregroundColor(.gray)
//                        }
//                    }
//                }
//                
//                
//                HStack {
//                    Text(landmark.park)
//                        .font(.subheadline)
//                        Spacer()
//                        Text(landmark.state)
//                            .font(.subheadline)
//                    }
//            }
//            .padding()
//
//            Spacer()
//        }
//        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
//    }
//}

#if DEBUG
//struct LandmarkDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        LandmarkDetail(landmark: landmarkData[0])
//    }
//}
#endif
