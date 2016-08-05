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

public class Student {
    private var _age:Int
    private var _name:String
    private var _gender:Gender
    
    init(age:Int=0, name:String="Empty Name", gender:Gender=Gender.Female){
        _age = age
        _name = name
        _gender = gender
    }
    
    public func sayHello(){
        print("\(_name) say hello")
    }
    
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