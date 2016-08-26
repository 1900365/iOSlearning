//
//  main.m
//  task4_DynamicArray
//
//  Created by 刘赫 on 16/8/17.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Array.h"
#import "Object.h"
#import "Integer.h"

struct Student{
    int age;
    char *name;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        Array *arr = ArrayCreate();
        
//        int型数组内容
//        for (int i = 0; i < 20; i += 1) {
//            ArrayAdd(arr, i);
//        }
//        for (int j = 0; j < ArrayGetLength(arr); j += 1) {
//            printf("%d\n",ArrayGet(arr, j));
//        }

//        void *类型（AnyPointer）
//        for (int i=0; i<100; i+=1) {
//            ArrayAdd(arr, "Hello world");
//        }
//        for (int j=0; j<ArrayGetLength(arr); j += 1) {
//            printf("%s, %d\n",ArrayGet(arr,j),j);
//        }
        
//        ArrayDestory(arr);
        
//        Object *obj = malloc(sizeof(Object));   //为obj分配内存
//        ObjectRetain(obj);
//        ObjectRelease(obj);
//        
//        Integer *i = IntegerNew(32);
//        printf("%d\n",IntegerGet(i));
////        ObjectRelease((Object *)i);
//        OBJECT_RELEASE(i);  //用宏，这样就不用上面的类型转换了
//
//        printf("%lu\n",sizeof(int));
//        printf("%lu\n",sizeof(AnyPointer));
        
        //FINAL TEST
        Array *arr = ArrayCreate();
        Integer *intValue;
        
        for (int j=0; j<10; j+=1) {
            intValue = IntegerNew(j);
            printf("1 retain count %d\n",OBJECT_RETAIN_COUNT(intValue));
            ArrayAdd(arr, (Object *)intValue);
            printf("2 retain count %d\n",OBJECT_RETAIN_COUNT(intValue));
            OBJECT_RELEASE(intValue);
            printf("3 retain count %d\n",OBJECT_RETAIN_COUNT(intValue));
        }
        printf("array remove:\n");
        printf("AR1 retain count %d\n",OBJECT_RETAIN_COUNT(intValue));
        ArrayRemoveAt(arr, 1);
        printf("AR2 retain count %d\n",OBJECT_RETAIN_COUNT(intValue));
        
        for (int i = 0; i < ArrayGetLength(arr); i += 1) {
            printf("[%d]: %d\n",i,IntegerGet(((Integer *)ArrayGet(arr, i))));
        }
        
        printf("array length is %d\n",arr->length_);
    }
    return 0;
}
