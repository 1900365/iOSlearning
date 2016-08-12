//
//  GirlFriend.swift
//  task3_1
//
//  Created by 刘赫 on 16/8/9.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

public class GirlFriend:NSObject {
    var name:String
    var age:Int
    
    override init() {
        self.name = generateGirlFriendName()
        self.age = generateGirlFriendAge()
    }
    
    public override var description: String{
        return "她叫\(name), \(age)岁"
    }
    
    public func date(){
        print("我总和\(name)相约\(chooseDate())")
    }
}