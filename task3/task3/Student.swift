//
//  Student.swift
//  task2
//
//  Created by 刘赫 on 16/8/5.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

public enum Gender:String{
    case Male = "男"
    case Female = "女"
}

//一个类只能继承自唯一的一个父类，接口(协议)是可以拥有多个的。有了接口后，必须有相关的实现代码。
public class Student:NSObject,Human { //Human是个协议（或接口）
    private var _age:Int
    private var _name:String
    private var _gender:Gender
    
    init(age:Int=0, name:String="Empty Name", gender:Gender=Gender.Female){
        _age = age
        _name = name
        _gender = gender
    }
    
    //自定义类属性（description），必须让student继承自NSObject后才可用
    public override var description: String{
        get{
            return "name: \(name), age: \(age), gender: \(gender)"
        }
    }
    
    //接口实现
    public func eat() {
        print("\(name) eat")
    }
    
    //方法（单独的函数叫函数，写在类里面的叫方法）
    public func sayHello(){
        print("父类 - \(_name) say hello")
    }
    
    //方法重载
    public func sayHello(to:Student){
        print("方法重载toStudnet - \(name) say hello to \(to.name) / \(to._name)")
    }
    //    public func sayHello(str:String){
    //        print("方法重载String - \(str) say hello to \(name) / \(_name)")
    //    }
    
    public func getAge()->Int{
        print("getAge()年龄: ", terminator: "")
        return _age
    }
    public func getName()->String{
        return _name
    }
    public func getGender()->Gender{
        return _gender
    }
    
    public var age:Int {
        get{
            print("age年龄: ", terminator: "")
            return _age
        }
        set{
            _age = newValue
        }
    }
    public var name:String {
        get{
            return _name
        }
        set{
            _name = newValue
        }
    }
    public var gender:Gender {
        get{
            return _gender
        }
    }
    
    public func getGenderHashValue()->Int{
        return _gender.hashValue
    }
    public func getGenderRawValue()->String{
        return _gender.rawValue
    }
    public var genderHashValue:Int{
        get{
            return _gender.hashValue
        }
    }
    public var genderRawValue:String{
        get{
            return _gender.rawValue
        }
    }
    
    
}