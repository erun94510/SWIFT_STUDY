//
//  _0221024App.swift
//  20221024
//
//  Created by Donghoon Bae on 2022/10/24.
//

import SwiftUI

@main
struct _0221024App: App {
    let demoData: DemoData = DemoData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(demoData)
            
        }
    }
}
