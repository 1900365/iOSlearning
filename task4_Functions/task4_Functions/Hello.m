//
//  Hello.m
//  task4_Functions
//
//  Created by 刘赫 on 16/8/16.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hello.h"

void printHello(char *name){
    printf("hello %s in other file\n",name);
}

int max(int a, int b){
//    if (a>b)    return a;
//    else        return b;
    return a>b?a:b;     //三目运算符。有2个符号和三段代码
}