//
//  ContentView.swift
//  20221024
//
//  Created by Donghoon Bae on 2022/10/24.
//

import SwiftUI
import Combine


struct ContentView: View {
    
    @EnvironmentObject var demoData: DemoData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("userCoutn: \(demoData.userCount)")
                    .padding()
                Text("currentUser: \(demoData.currentUser)")
                    .padding()
                
                Button(action: {
                    demoData.updateData()
                }) {
                    Text("update data")
                }
                .padding()
                NavigationLink(destination: SeconView()) {
                    Text("Push")
                }
            }
            .padding()
        }
    }
}

struct SeconView: View {
    
    @EnvironmentObject var demoData: DemoData
    var body: some View {
        NavigationView {
            VStack {
                Text("userCoutn: \(demoData.userCount)")
                    .padding()
                Text("currentUser: \(demoData.currentUser)")
                    .padding()
            }
            .navigationTitle(Text("Detail"))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
