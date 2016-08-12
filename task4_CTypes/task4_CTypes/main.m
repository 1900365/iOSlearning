//
//  main.m
//  task4_CTypes
//
//  Created by 刘赫 on 16/8/12.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        int a = 10;    //int  是整形
//        long b = 100;  //long 是长整形
//        //%d输出int，%ld输出长整数,INT_MAX看int最大，LONG_MAX看long最大
//        printf("a=%d, max int is %d, size of a is %ld\n",a,INT_MAX,sizeof(a));
//        printf("b=%ld, max long is %ld, size of b is %ld\n",b,LONG_MAX,sizeof(b));
        int32_t a = 10;     //32位的int，长度4
        int64_t b = 100;    //64位的int，长度8
        printf("a=%d, b=%lld\n",a,b);
        printf("%d,%d,%d,%lld\n",INT8_MAX,INT16_MAX,INT32_MAX,INT64_MAX);
        
//        float f = 3.14;     //浮点型
//        double lf = 3.14;   //更大的浮点型
        Float32 f = 3.14;     //32位的float，长度4
        Float64 lf = 3.14;    //64位的float，长度8
        printf("f = %f, size of float is %ld\n",f,sizeof(float));
        printf("lf = %lf, size of float is %ld\n",lf,sizeof(double));
        
        char ch = 'a';         //字符型。单引号是字符，双引号是字符串
        int8_t ch2 = 'b';      //int8_t和char是一样的
        printf("char = %c, int8_t输出%c\n",ch,ch2);   //正常输出字符用%c
        printf("char = %d, int8_t输出%d\n",ch,ch2);   //用整数型输出字符%d
        
        //字符的大写和小写之间差了32，可以用这个方法来进行字符大小写转换
        printf("小写%c, 减32就变小写%c\n",ch,ch-32);
        
        char *str = "hello world";                   //字符串定义用char *，一般让*靠近变量
        printf("string is %s\n",str);                //输出字符串用%s
        printf("%s中第一个字符是%c\n",str,str[0]);     //可以一个一个访问字符串中的字符
        
        
    }
    return 0;
}
