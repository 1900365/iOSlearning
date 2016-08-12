//
//  RandomNumber.swift
//  task3_1
//
//  Created by 刘赫 on 16/8/10.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

public func randomInRange(range:Range<Int>) -> Int{
    return Int(arc4random_uniform(UInt32(range.endIndex - range.startIndex))) + range.startIndex
}