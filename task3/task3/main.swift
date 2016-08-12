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
s.sayHello()
b.sayHello()
//print(b.name,b.getName())
//print(b.gender.rawValue,b.getGender().rawValue)
//print(b.age,b.getAge())
//print(b.genderHashValue,b.genderRawValue,b.getGenderHashValue(),b.getGenderRawValue())

s.sayHello(b)
b.sayHello(s)
b.sayHello(b)
s.sayHello(s)
//s.sayHello("哈哈哈")
//b.sayHello("呵呵呵")
b.boySayHello()

//Extension: 在现有api不满足时，可以使用extension
var str:String="My song.mp3"
//func endWith(target:String,end:String)->Bool{
//}
print("Using extension String: \(str.endWith(".mp3 "))")

//结构体和类的2大区别：
//1. 结构体不能继承，类可以继承
//2. 在赋值的时候，结构体执行的是复制，而类执行的是传递引用
struct A{
    var intVar = 20
}
class AC{
    var intVar = 20
}
var aa = A()
print("struct - aa.intVar:\(aa.intVar)")
aa.intVar = 100
print("struct - aa.intVar:\(aa.intVar)")
var bb = aa
print("struct - aa.intVar:\(aa.intVar), bb.intVar:\(bb.intVar)")
bb.intVar = 200
print("struct - aa.intVar:\(aa.intVar), bb.intVar:\(bb.intVar)")
var cc = AC()
print("class - cc.intVar:\(cc.intVar)")
cc.intVar = 100
print("class - cc.intVar:\(cc.intVar)")
var dd = cc
print("class - cc.intVar:\(cc.intVar), dd.intVar:\(dd.intVar)")
dd.intVar = 200
print("class - cc.intVar:\(cc.intVar), dd.intVar:\(dd.intVar)")

//类的描述
print(b)
//task2.BoyStudent，仅描述类的名字
//当在student.swift中，让student这个类继承NSObject后，会变成task2.BoyStudent: 0x102000400
//自定义description后，变为override后的print内容

b.eat() //使用协议

