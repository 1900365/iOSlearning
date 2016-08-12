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

//var b = 0,c = 20
//for i in 0...3000 {
//    //var a = Int(arc4random()%13) + 18
//    var a = Int(arc4random_uniform(12))  //结果是0到11
//    if a > b {
//        b = a
//    }
//    if a < c {
//        c = a
//    }
//}
//print(b,c)
//
//let range = 3...8 //3..<9
//range.count       //6
//range.startIndex  //3
//range.endIndex    //9
//let count = UInt32(range.endIndex - range.startIndex)      //6
//print(Int(arc4random_uniform(count)) + range.startIndex)   //0到5 加3，符合范围3到8

//随机数方法 1.random() 2.arc4random()
//var name = String.init(format: "%c", 65)  //把65(大写字母A的asc编码)已字符的形式，赋值给name
//var name = String.init(format:"%c",65+arc4random()%26) 随机数除以26取余数，必然是0到25。65是A，+0到25就是A到Z，26个字母
let name = String.init(format:"%c%c", 65 + arc4random()%26, 65 + arc4random()%26) //这样就是2个字母的随机名字