//
//  DateOption.swift
//  task3_1
//
//  Created by 刘赫 on 16/8/10.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

private enum dateOption:String {
    case option1 = "吃饭"
    case option2 = "逛街"
    case option3 = "看电影"
    case option4 = "唱歌"
    case option5 = "旅游"
}

public func chooseDate() -> String {
    let dateOptionRange = 0...5     //比约会选项多一项，default:约会失败
    switch randomInRange(dateOptionRange) {
    case 1:
        return dateOption.option1.rawValue
    case 2:
        return dateOption.option2.rawValue
    case 3:
        return dateOption.option3.rawValue
    case 4:
        return dateOption.option4.rawValue
    case 5:
        return dateOption.option5.rawValue
    default:
        return "失败，回家吧"
    }
}