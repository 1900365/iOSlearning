//
//  GenerateGirlFriend.swift
//  task3_1
//
//  Created by 刘赫 on 16/8/10.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

public func generateGirlFriendName() -> String {
    let lowerCaseRange = 97...122
    let upperCaseRange = 65...90
    let nameLengthRange = 3...6   //名字长度在3到6位之间
    var girlName = ""
    
    for familyAndGivenName in 0 ..< 2 {  //第一遍是姓，第二遍是名
        if familyAndGivenName > 0 {
            girlName += " "
        }
        for generateName in 0 ..< randomInRange(nameLengthRange) {  //随机长度的名字
            if generateName > 0 {
                girlName += String(format:"%c", randomInRange(lowerCaseRange))
            }
            else {
                girlName += String(format:"%c", randomInRange(upperCaseRange))
            }
        }
    }
    return girlName
}

public func generateGirlFriendAge() -> Int {
    let ageRange = 18...30
    return randomInRange(ageRange)
}