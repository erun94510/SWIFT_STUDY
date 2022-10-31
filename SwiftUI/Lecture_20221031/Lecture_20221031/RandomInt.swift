//
//  RandomInt.swift
//  Lecture_20221031
//
//  Created by Donghoon Bae on 2022/10/31.
//

import Foundation

struct RandomInt {
    
    var arr: [[Int]] = [
        [],
        [],
        []
    ]
    
    init() {
        for _ in 0...6 {
            let randomInt: Int = Int.random(in: 1 ... 10)
            self.arr[0].append(randomInt)
        }
        for _ in 0...6 {
            let randomInt: Int = Int.random(in: 1 ... 10)
            self.arr[1].append(randomInt)
        }
        for _ in 0...6 {
            let randomInt: Int = Int.random(in: 1 ... 10)
            self.arr[2].append(randomInt)
        }
    }
}
