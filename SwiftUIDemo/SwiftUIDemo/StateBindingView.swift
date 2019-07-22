//
//  StateDemoView.swift
//  SwiftUIDemo
//
//  Created by BeyondChao on 2019/7/21.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI

struct StateBindingView: View {
    
    @State var showGreeting = true
    @State var showDetails = false
    @State var name: String = "Tim"

    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("Show welcome message")
            }.padding()
            
            if showGreeting {
                Text("Hello world!")
                    .animation(Animation.spring())
            }
            
            Divider()
            
            Button(action: {
                self.showDetails.toggle()
            }) {
                Text("Show Detail")
            }
            
            if showDetails {
                Text("You should follow me on Twitter: @BeyondChao")
                    .font(.largeTitle)
                    .lineLimit(nil)
                    .animation(Animation.easeIn)
            }
            
            Divider()

            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Hello, \(name)!")
        }
    }
}

#if DEBUG
struct StateDemoView_Previews: PreviewProvider {
    static var previews: some View {
        StateBindingView()
    }
}
#endif
