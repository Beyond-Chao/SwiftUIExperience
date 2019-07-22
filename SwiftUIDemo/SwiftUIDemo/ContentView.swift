//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by BeyondChao on 2019/7/19.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    
    @State var showAlert = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Target Color Block")
                Text("Guess Color Block")
            }
            
            HStack {
                // target color block
                VStack {
                    Rectangle().foregroundColor(Color.init(red: rTarget, green: gTarget, blue: bTarget))
                    Text("Match this color")
                }
                
                // guess color block
                VStack {
                    Rectangle().foregroundColor(Color.init(red: rGuess, green: gGuess, blue: bGuess))
                    HStack {
                        Text("R: \(Int(rGuess * 255.0))")
                        Text("G: \(Int(gGuess * 255.0))")
                        Text("B: \(Int(bGuess * 255.0))")
                    }
                }
            }
            
            Button(action: {
                self.showAlert = true
            }) {
                Text("Hit me button")
            }.foregroundColor(.blue).alert(isPresented: $showAlert) {
              Alert(title: Text("Your Score"), message: Text("\(computeScore())"))
            }
            
            VStack {
                Text("Red slider")
                ColorSlider(value: $rGuess, textColor: .red)
                
                Text("Green slider")
                ColorSlider(value: $gGuess, textColor: .green)

                
                Text("Blue slider")
                ColorSlider(value: $bGuess, textColor: .blue)

            }.padding(10)
        }
    }
    
    func computeScore() -> Int {
      let rDiff = rGuess - rTarget
      let gDiff = gGuess - gTarget
      let bDiff = bGuess - bTarget
      let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
      return Int((1.0 - diff) * 100.0 + 0.5)
    }
}

struct ColorSlider: View {
    
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor).padding(EdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing: 0))
            Slider(value: $value, from: 0.0, through: 1.0)
            Text("255").foregroundColor(textColor).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
        }
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView.init(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
    }
}
#endif
