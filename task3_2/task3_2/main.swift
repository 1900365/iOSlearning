//
//  main.swift
//  task3_2
//
//  Created by 刘赫 on 16/8/11.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

let taskString: NSString = "ixix1ixix"
let stringSpliter: NSString = "ix"

print(taskString.split(stringSpliter))           //如果分割字符串连续出现，输出空白
print(taskString.splitNoBlank(stringSpliter))    //如果分割字符串连续出现，不输出空白

print("\r作业要求的输出：")
let homeWorkTask:NSString = "Hello&jikexueyuan&Hello"
print(homeWorkTask.split("&"))            // 输出 [Hello, jikexueyuan, Hello]
print(homeWorkTask.split("jikexueyuan"))  // 输出 [Hello&, &Hello]
