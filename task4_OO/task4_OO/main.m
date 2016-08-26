//
//  main.m
//  task4_OO
//
//  Created by 刘赫 on 16/8/26.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hello.h"

//                  类            接口
//Objective-c   @interface    @protocal (协议)
//Swift         class         protocal
//Java          class         interface

//objective-c的类有两部分：定义 和 实现

//定义
//@interface Hello : NSObject
//+(void)staticSayHello; //用+的是静态函数
//-(void)sayHello;
//-(void)sayHelloTo:(NSString *)name theOther:(NSString *)name1;
//@end
//
////实现
//@implementation Hello
//
//+(void)staticSayHello{
//    NSLog(@"hello world");
//}
//
//-(void)sayHello{
//    NSLog(@"hello objective-c");  //oc的字符串是@" "，只有“ ”是C语言的字符串
//}
//
//-(void)sayHelloTo:(NSString *)name theOther:(NSString *)name1{
//    //oc中如果用NSLog输出的是一个对象，用%@，其它和c的printf一样
//    NSLog(@"hello %@, %@",name,name1);
//}
//@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Hello * h = [[Hello alloc] init];  //alloc是hello的静态方法，init是hello的实例方法
//        [h sayHello];
//        [Hello staticSayHello];
//        [h sayHelloTo:@"张三" theOther:@"李四"];
        
        //引用文件里的类
        Hello *h = [[Hello alloc] init];
        [h sayHello];
    }
    return 0;
}
