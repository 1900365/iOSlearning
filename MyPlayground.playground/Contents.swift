//: Playground - noun: a place where people can play

import UIKit

struct student {
    var name:String
    var mathScore:Int
    var englishScore:Int
    var averageScore:Double

    init (name:String="No Name", mathScore:Int=0, englishScore:Int=0, averageScore:Double=0) {
        self.name = name
        self.mathScore = mathScore
        self.englishScore = englishScore
        self.averageScore = (Double(mathScore) + Double(englishScore)) / 2
    }
}

for i in 1...10 {
    var stu:student = student(name: "a\(i)", mathScore: 84, englishScore: 72)
    print(stu)
}
