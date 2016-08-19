//
//  Array.h
//  task4_DynamicArray
//
//  Created by 刘赫 on 16/8/17.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#ifndef Array_h
#define Array_h

#include <stdio.h>

typedef struct Array_ {
    int length_;    //数组的长度
    int capacity_;  //数组的分配空间
    int *values_;    //int型的指针：一个长度不固定的int数组
} Array;

Array * ArrayCreate();

int ArrayGetLength(Array *arr);

void ArrayAdd(Array *arr, int value);

int ArrayGet(Array *arr, int index);

void ArrayDestory(Array *arr);

#endif /* Array_h */
