//
//  main.swift
//  task3_1
//
//  Created by 刘赫 on 16/8/9.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

let numberOfGirls = 100
for girlList in 1...numberOfGirls{
    var girlFriend = GirlFriend()
    print("我的第\(girlList)个女朋友", girlFriend, separator: "", terminator: ", ")
    girlFriend.date()
}

