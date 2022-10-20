//
//  ContentView.swift
//  20221020
//
//  Created by Donghoon Bae on 2022/10/20.
//

import SwiftUI

struct ContentView: View {
    @State private var startNum: Int = 0
    @State private var startNumArr = [Int](0...100)
    @State private var endNum: Int = 100
    @State private var endNumArr = [Int](0...100)
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            //            Text(Double.random(in: 10.0 ... 20.0, using: &randomNum))
            
            GeometryReader { geometry in
                VStack {
                    
                    HStack {
                        Picker(selection: $startNum, label: Text("StartNum")) {
                            ForEach(startNumArr, id: \.self) { start in
                                Text("\(start)")
                            }
                        }.pickerStyle(.wheel)
                            .frame(width: geometry.size.width/2, height: geometry.size.height, alignment: .center)
                            .compositingGroup()
                            .clipped()
                        Picker(selection: $endNum, label: Text("EndNum")) {
                            ForEach(endNumArr, id: \.self) { end in
                                Text("\(end)")
                            }
                        }.pickerStyle(.wheel)
                            .frame(width: geometry.size.width/2, height: geometry.size.height, alignment: .center)
                            .compositingGroup()
                            .clipped()
                        
                    }
                    
                    NavigationLink(destination: GameView(startNum: $startNum, endNum: $endNum), label: {
                        Text("Next")
                    })
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
