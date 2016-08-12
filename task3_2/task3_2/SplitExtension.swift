//
//  SplitExtension.swift
//  task3_2
//
//  Created by 刘赫 on 16/8/11.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

extension NSString{
    func split(stringSpliter: NSString) -> [NSString] {
        var splittedString = [NSString]()
        var fullString = self
        
        while true {
            let checkSpliter = fullString.rangeOfString(String(stringSpliter))
            if checkSpliter.length != 0 {
                splittedString.append(fullString.substringToIndex(checkSpliter.toRange()!.startIndex))
                fullString = fullString.substringFromIndex(checkSpliter.toRange()!.endIndex)
            }
            else {
                splittedString.append(fullString)
                break
            }
        }
        return splittedString
    }

    
    func splitNoBlank(stringSpliter: NSString) -> [NSString] {
        var splittedString = [NSString]()
        var fullString = self
        var i:Int = 0
        while fullString.length != 0 {
            i += 1
            let checkSpliter = fullString.rangeOfString(String(stringSpliter))
            if checkSpliter.length != 0 {
                let cutString:NSString = fullString.substringToIndex(checkSpliter.toRange()!.startIndex)
                if cutString.length != 0 {
                    splittedString.append(cutString)
                }
                fullString = fullString.substringFromIndex(checkSpliter.toRange()!.endIndex)
            }
            else {
                splittedString.append(fullString)
                break
            }
        }
        return splittedString
    }
}