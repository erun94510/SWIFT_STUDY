//
//  DemoData.swift
//  20221024
//
//  Created by Donghoon Bae on 2022/10/24.
//

import Foundation

// ObservableObject의 의미는 '이거 지켜봐줘' 의미
// 1. 내부의 내용들이 바뀔 예정!
class DemoData: ObservableObject {
    
    // Published의 의미는 다음의 값이 바뀌면 알려주겠다는 뜻
    // 2. 구체적으로 이런 애용이 바뀔 예정!
    @Published var userCount: Int = 0
    @Published var currentUser: String = ""
    
    init() {
        updateData()
    }
    
    func updateData() {
        userCount += 1
        currentUser = "done"
    }
}
