//
//  main.m
//  task4_CStruct
//
//  Created by 刘赫 on 16/8/16.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>

//struct Student{
//    int age;
//    char *name;
//};
typedef struct _Student{    //通常在结构体这里加_，用来区分结构体和结构体类型，甚至可以直接把_Student删掉
    int age;
    char *name;
} Student;  //使用typedef将struct Student定义成Student类型，使用时可以直接写Student

//union(共同体)和结构体的不同：结构体中每个成员在内存中是依次排开的；共同体的都是从0开始往后排，都是用的同一块内存
union Data {
    char ch;
    int8_t value;
    Float32 decimal;
};


struct ColorS {
//    int8_t alpha, red, green, blue;
    //因为int类型在存储的时候，是反着存储的，例如1234在存储的时候，是4321，因此argb在声明变量时要反着写
    uint8_t blue, green, red, alpha;  //如果用int，是有符号的，从-128到127，uint是没有符号的，从0到255
};

union ColorU {
    int32_t color;  //4长度的aRGB颜色值
    struct ColorS colors;
};  //颜色值和struct公用一块内存

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        struct Student s = {10,"Jikexueyuan"};
//        struct Student s;
        Student s;  //使用typedef定义类型后，可以直接使用Student
        s.age=2;
        s.name="Lao Wang";
        printf("name = %s, age = %d\n",s.name,s.age);
        
        union Data data = {98};
        
        printf("data.ch=%c, data.value=%d, data.decimal=%f\n",data.ch,data.value,data.decimal);
        
        //结构体及共同体结合使用: 获取颜色
        //不透明的红色，前两位是alpha通道，argb：带透明度的rgb颜色
        int32_t color = 0xFFFF0000;  //0x代表是16进制
        union ColorU theColor;
        theColor.color = color;
        printf("Aplha通道：%d，%x\n", theColor.colors.alpha, theColor.colors.alpha); //%x是16进制
        printf("Red通道：%d，%x\n", theColor.colors.red, theColor.colors.red);
        printf("Green通道：%d，%x\n", theColor.colors.green, theColor.colors.green);
        printf("Blue通道：%d，%x\n", theColor.colors.blue, theColor.colors.blue);
    }
    return 0;
}
