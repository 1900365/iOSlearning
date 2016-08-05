//
//  BoyStudent.swift
//  task2
//
//  Created by 刘赫 on 16/8/5.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

class BoyStudent:Student {
    init(age: Int = 0, name: String = "Empty Boy Name") {
        super.init(age: age, name: name, gender: Gender.Male)
    }
}