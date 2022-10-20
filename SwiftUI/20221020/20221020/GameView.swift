//
//  GameView.swift
//  20221020
//
//  Created by Donghoon Bae on 2022/10/20.
//

import SwiftUI

struct GameView: View {
    @Binding var startNum: Int
    @Binding var endNum: Int
    
    var body: some View {
        Text("\(startNum)")
        Text("\(endNum)")
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(startNum: .constant(0), endNum: .constant(100))
    }
}
