//
//  Human.swift
//  task2
//
//  Created by 刘赫 on 16/8/9.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

//这是一个协议. 协议只写定义，不写实现(不能有body)。不能写大括号，有大括号代表有实现
//协议是用来规范一些功能的实现
//如果一个类需要一些复合的功能，不能通过类，但是可以用协议
//如果多个类需要一个相同的功能，可以通过协议来进行功能规范

protocol Human {
    func eat()
}