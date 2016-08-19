//
//  main.m
//  task4_Pointer
//
//  Created by 刘赫 on 16/8/16.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Student {
    int age;
    char *name;
};

int getMaxValue(int a,int b){
    return a>b?a:b;
}
//可将函数指针定义为一个类型
typedef int(*MyFunction)(int,int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char *str = "hello world";
        
        printf("%c\n",*(str+1));
        printf("%lld\n",(int64_t)str);
        
        //在多少位的操作系统下，指针就是多少位的整形值
        int64_t strPointer = (int64_t) str;
        char *string = (char *)strPointer;
        printf("%s\n",string);   //指针和整形是可以相互转换的
        
        
        struct Student student = {18,"lao wang"};
        struct Student student1 = student;
        student1.age = 20;
        //student和student1是分别存在不同的内存中
        printf("student{name: %s, age: %d}\n", student.name,student.age);
        
        //结构体指针
        //struct指针无法对值进行初始化，需要使用malloc分配内存
        struct Student *s = malloc(sizeof(struct Student)); //分配内存的长度是struct Student的size
        s->age = 18;                //访问指针的成员不能用.，需要用->
        s->name = "xiao wang";
        struct Student *s1 = s;
        s1->age = 20;
        //因为s和s1是指针，他们使用的是同一块内存
        printf("s{name: %s, age: %d}\n",s->name,s->age);
        //通过malloc分配的内存，必须通过free释放掉
        free(s);  //free s或s1都行，他们是指向同一块内存
        
        //函数指针:就是指向函数的指针，可做事件处理器，程序的回调等
        int(*p)(int,int); //第一个括号是返回值，第二个是传入参数
        p = &getMaxValue;   //&是取地址符, 函数后面传参数的括号不要
        int maxValue = (*p)(2,3);
        printf("max value is %d\n",maxValue);
        
        //使用定义的函数指针类型实现：
        MyFunction func = &getMaxValue;
        int maxValue2 = func(2,9);
        printf("max value2 is %d\n",maxValue2);
    }
    return 0;
}
