//
//  ExampleView.swift
//  SwiftUIDemo
//
//  Created by BeyondChao on 2019/7/21.
//  Copyright © 2019 BeyondChao. All rights reserved.
//

import SwiftUI

struct ExampleView: View {
    
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    var dueDate = Date()
    
    var body: some View {

        VStack(alignment: .leading, spacing: 15) {
            Image("alien")
                .aspectRatio(contentMode: .fit)
            
            Text("Hello World")
                .foregroundColor(.gray)
                .background(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .topLeading, endPoint: .bottomTrailing), cornerRadius: 0)
            
            Image(systemName: "cloud.heavyrain.fill")
            
            Divider()
                .foregroundColor(.black)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200, alignment: .center)
            
            Divider()
                .foregroundColor(.black)
            
            Text("This is an extremely long string that will never fit even the widest of Phones: dueDate: \(dueDate, formatter: Self.taskDateFormat)")
                    .lineLimit(nil)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .lineSpacing(20)
            
            Divider()
                .foregroundColor(.black)
            
            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100, alignment: .center)
        }
    }
}



#if DEBUG
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
#endif
