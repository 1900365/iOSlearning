//
//  GirlFriend.swift
//  task3_1
//
//  Created by 刘赫 on 16/8/9.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

enum Grace {
    case 普通
    case 漂亮
    case 优雅
    case 女神
}

class GirlFriend:NSObject{
    var name:String = "abc"
    var age:Int = 18
    var grace:Grace = Grace.优雅
    var money:Int = 100000
    
    init(name:String, age:Int, grace:Grace, money:Int) {
        self.name = name
        self.age = age
        self.grace = grace
        self.money = money
    }
    
    override var description: String{
        return "name = \(name), age = \(age), grace = \(grace), money = \(money)"
    }
    
    override init() {
        //随机数方法 1.random() 2.arc4random()
        
        //var name = String.init(format: "%c", 65)  //把65(大写字母A的asc编码)已字符的形式，赋值给name
        //var name = String.init(format:"%c",65+arc4random()%26) 随机数除以26取余数，必然是0到25。65是A，+0到25就是A到Z，26个字母
        let name = String.init(format:"%c%c", 65 + arc4random()%26, 65 + arc4random()%26) //这样就是2个字母的随机名字
        self.name = name
        self.age = Int(arc4random()%30)
    }
    
    func eat(food:String){
        print("girl friend named \(name) eat \(food)")
    }
}