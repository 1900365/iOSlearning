//
//  main.swift
//  task2_1
//
//  Created by 刘赫 on 16/8/3.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

let numberRange = 1...9

for multiplier in numberRange {
    for multiplicand in 1...multiplier {
        print("\(multiplier) * \(multiplicand) = \(multiplier * multiplicand)\t", terminator: "\t")
    }
    print("")
}