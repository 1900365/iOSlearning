//
//  main.swift
//  task1
//
//  Created by 刘赫 on 16/8/5.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

enum Direction:String{
    case Up = "上"
    case Right = "右"
    case Down = "下"
    case Left = "左"
    
    func getRotation()->Int{
        switch self{
        case .Up:
            return 0
        case .Right:
            return 90
        case .Down:
            return 180
        case .Left:
            return 270
        }
    }
}

print(Direction.Right)
print(Direction.Right.rawValue)
print(Direction.Right.hashValue)
print(Direction.Right.getRotation())