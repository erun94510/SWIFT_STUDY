//
//  FinView.swift
//  FinancialApp
//
//  Created by Donghoon Bae on 2022/10/19.
//

import SwiftUI

struct FinView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15.0) {
            Text("금융 결과")
                .font(.title)
                .padding(.bottom, 30.0)
            
            HStack(alignment: .center) {
                Text("1분기 판매")
                    .padding()
                Spacer()
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("1월")
                    Text("2월")
                    Text("3월")
                }
                Spacer()
                VStack(alignment: .leading, spacing: 15) {
                    Text("$1,000.00")
                    Text("$200.00")
                    Text("$3,000.00")
                }
                .padding()
            }
        }
        .padding()
    }
}

struct FinView_Previews: PreviewProvider {
    static var previews: some View {
        FinView()
    }
}
