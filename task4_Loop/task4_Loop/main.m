//
//  main.m
//  task4_Loop
//
//  Created by 刘赫 on 16/8/13.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");

//        for (int i = 0; i < 100; i++) {
//            if (i == 50){
////                break;      //跳出整个循环
//                continue;   //跳出当前循环后继续后续循环
//            }
//            printf("current index is %d\n",i);
//        }
        
        int i=0;
//        while (i<100) {
//            printf("current index is %d\n",i);
//            i+=1;
//        }
//        while (YES) {
//            i+=1;       //i+=1 在break上面，最终输出49，在break下面，最终输出50
//            if (i==50)
//                break;
//            printf("current index is %d\n",i);
//        }

        do {
            printf("current index is %d\n",i);
            i+=1;
        } while(i<100);
        //while循环是先判断再执行，do while是先执行再判断
    }
    return 0;
}
