//
//  StringExtension.swift
//  task2
//
//  Created by 刘赫 on 16/8/9.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

extension String{
    
    func endWith(end:String)->Bool{
        var result = true
        let reverseAll = self.characters.reverse()
        let reverseEnd = end.characters.reverse()
        
        for i in 0..<reverseEnd.count{
            if reverseAll[reverseAll.startIndex.advancedBy(i)] != reverseEnd[reverseEnd.startIndex.advancedBy(i)]{
                result = false
                break
            }
        }
        return result
    }
}