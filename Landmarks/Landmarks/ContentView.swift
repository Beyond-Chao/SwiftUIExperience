//
//  ContentView.swift
//  Landmarks
//
//  Created by 程超超 on 2023/8/29.
//  Copyright © 2023 BeyondChao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(Font.system(size: 23))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.blue)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                    .foregroundColor(Color(uiColor: UIColor.red))
                
                Text("Abount Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}


struct ContentViewProvider_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
