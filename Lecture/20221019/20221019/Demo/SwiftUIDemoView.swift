//
//  SwiftUIDemoView.swift
//  20221019
//
//  Created by Donghoon Bae on 2022/10/19.
//

import SwiftUI

struct SwiftUIDemoView: View {
    
    var colors: [Color] = [.black, .red, .green, .blue, .orange, .gray, .teal, .purple, .indigo]
    var colornames = ["Black", "Red", "Green", "Blue", "Orange", "Gray", "Teal", "Purple", "Indigo"]
    
    @State private var colorIndex = 0
    @State private var rotation: Double = 0.0
    @State private var text: String = "6조 입니다."
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "hammer.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(.degrees(rotation))
                .animation(.easeIn(duration: 5), value: rotation)
                .foregroundColor(colors[colorIndex])
            
            Spacer()
            
            Divider()
            
            Slider(value: $rotation, in: 0 ... 360, step: 0.1)
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach(0 ..< colornames.count, id: \.self) {
                    Text(colornames[$0])
                        .foregroundColor(colors[$0])
                }
            }
            .pickerStyle(.inline)
            .padding()
        }
        .padding()
    }
}

struct SwiftUIDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDemoView()
    }
}
