//
//  Flight.swift
//  FinancialApp
//
//  Created by Donghoon Bae on 2022/10/19.
//

import SwiftUI

struct Flight: View {
    var body: some View {
        HStack {
            Image(systemName: "airplane")
            Text("Flight times:")
            Text("San Fransico")
                .layoutPriority(1)
        }
        .font(.largeTitle)
        .lineLimit(1)
    }
}

struct Flight_Previews: PreviewProvider {
    static var previews: some View {
        Flight()
    }
}
