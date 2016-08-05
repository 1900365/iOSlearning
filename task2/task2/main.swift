//
//  main.swift
//  task2
//
//  Created by 刘赫 on 16/8/5.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

let s = Student(age: 20, name: "xiao wang", gender: Gender.Female)

print(s.getName(), s.getAge(), s.getGender())

let b = BoyStudent(age: 18, name: "lao wang")
print(b.getGender(), terminator: " - ")
b.sayHello()
print(b.name,b.getName())
print(b.gender.rawValue,b.getGender().rawValue)
print(b.age,b.getAge())
print(b.genderHashValue,b.genderRawValue,b.getGenderHashValue(),b.getGenderRawValue())
