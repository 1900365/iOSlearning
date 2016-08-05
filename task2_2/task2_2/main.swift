//
//  main.swift
//  task2_2
//
//  Created by 刘赫 on 16/8/4.
//  Copyright © 2016年 liuhe. All rights reserved.
//

import Foundation

let scoreRange = 1...100
let studentListRange = 1...10
var studentList:[student] = [student]()

//生成学生列表
for studnetNumber in studentListRange {
    var studentName = "Student\(String(format:"%02i",studnetNumber))"
    var studentRecord = student(name: studentName, mathScore: randomNumber(scoreRange), englishScore: randomNumber(scoreRange), averageScore: 0)
    studentRecord.averageScore = (Double(studentRecord.mathScore) + Double(studentRecord.englishScore)) / 2
    studentList.append(studentRecord)
}

//将学生记录按照平均分排序
for lastRecord in 0 ..< studentList.count - 1 {
    for currentRecord in lastRecord + 1 ..< studentList.count {
        if studentList[lastRecord].averageScore < studentList[currentRecord].averageScore {
            var temp = studentList[lastRecord]
            studentList[lastRecord] = studentList[currentRecord]
            studentList[currentRecord] = temp
        }
    }
}

print(studentList)
