//
//  main.m
//  task4_ControlFlow
//
//  Created by 刘赫 on 16/8/13.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int score = 78;
        printf("score/10 = %d\n",score/10);

//        if (score>=90) {
//            printf("perfect\n");
//        }else if (score>=80) {
//            printf("good\n");
//        }else if (score>=70) {
//            printf("normal\n");
//        }else if (score>=60) {
//            printf("pass\n");
//        }else {
//            printf("fail\n");
//        }
        
        switch (score/10) {
            case 10:
                printf("star\n");
                break;
            case 9:
                printf("perfect\n");
                break;
            case 8:
                //如果没有break，程序将继续向下，直到有break
                //这里如果是8，将同时显示good和normal；7则为good
                printf("good\n");
            case 7:
                printf("normal\n");
                break;
            case 6:
                printf("pass\n");
            default:
                printf("fail\n");
                break;
        }
    }
    return 0;
}
