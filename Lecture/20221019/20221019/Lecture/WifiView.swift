//
//  WifiView.swift
//  FinancialApp
//
//  Created by Donghoon Bae on 2022/10/19.
//

import SwiftUI

struct WifiView: View {
    
    @State private var wifiEnable: Bool = false
    @State private var userName: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(userName)")
            TextField("이름을 입력", text: $userName)
            Spacer()
            Toggle(isOn: $wifiEnable) {
                Text("Wifi")
            }
            
            
            Spacer()
            WifiResultView(test: $wifiEnable)
            Spacer()
        }
        .padding()
    }
}

struct WifiResultView: View {
    
    @Binding var test: Bool
    
    var body: some View {
        Image(systemName: test ? "wifi" : "wifi.slash")
        Text(test ? "Wifi On" : "Wifi Off")

    }
}

struct WifiView_Previews: PreviewProvider {
    static var previews: some View {
        WifiView()
    }
}
