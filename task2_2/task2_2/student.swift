//
//  student.swift
//  task2_2
//
//  Created by 刘赫 on 16/8/4.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

struct student{
    var name:String
    var mathScore:Int
    var englishScore:Int
    var averageScore:Double
    
    init (name:String="Empty", mathScore:Int=0, englishScore:Int=0, averageScore:Double=0) {
        self.name = name
        self.mathScore = mathScore
        self.englishScore = englishScore
        self.averageScore = (Double(mathScore) + Double(englishScore)) / 2
    }
}