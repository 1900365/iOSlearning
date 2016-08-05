//
//  randomNumber.swift
//  task2_2
//
//  Created by 刘赫 on 16/8/4.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

func randomNumber(range: Range<Int>) -> Int {
    let count = UInt32(range.endIndex - range.startIndex)
    return Int(arc4random_uniform(count)) + range.startIndex
}