//
//  ContentView.swift
//  Lecture_20221031
//
//  Created by Donghoon Bae on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    
    var randomInt: RandomInt = RandomInt()
    
    @State private var arrNum: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center) {
                    ForEach(randomInt.arr[arrNum], id: \.self) { number in
                        Spacer()
                        VStack {
                            Capsule()
                                .frame(width: 30, height: CGFloat(number) * 15)
                                .foregroundColor(.blue)
                                .scaleEffect(1)
                            
                            Text("\(number)")
                                .bold()
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .lineLimit(1)
                        }
                        .frame(height: 350, alignment: .bottom)
                        Spacer()
                    }
                    .animation(.easeInOut(duration: 1.5), value: CGFloat(arrNum))
                }
                .padding()
                
                
                Divider()
                HStack {
                    Spacer()
                    Button {
                        arrNum = 0
                    } label: {
                        Text("배열 1")
                    }
                    Spacer()
                    Button {
                        arrNum = 1
                    } label: {
                        Text("배열 2")
                    }
                    Spacer()
                    Button {
                        arrNum = 2
                    } label: {
                        Text("배열 3")
                    }
                    Spacer()
                }
                .padding()
            }
            .padding()
            .navigationTitle("그래프 그리기")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
