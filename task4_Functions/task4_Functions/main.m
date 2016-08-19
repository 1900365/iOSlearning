//
//  main.m
//  task4_Functions
//
//  Created by 刘赫 on 16/8/16.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hello.h"
void printHelloFunc();      //定义函数。如果不定义，函数就必须写在main的前面

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        printHelloFunc();
        printHello("呵呵呵");
        printf("max value is %d\n", max(3, 6));
    }
    for (int i=0;i<argc;i+=1){
        printf("argc = %d, argv[%d] = %s\n",argc,i,argv[i]);
    }
    return 0;
}

void printHelloFunc(){
    printf("hello C function in main.m\n");
}