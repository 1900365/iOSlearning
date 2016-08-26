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
#include "Object.h"

//typedef void * AnyPointer; //把void *定义成AnyPointer(指向任何类型的指针)，使用的时候方便
typedef Object * AnyPointer;

typedef struct Array_ {
    int length_;    //数组的长度
    int capacity_;  //数组的分配空间
//    int *values_;    //int型的指针：一个长度不固定的int数组
//    void **values_; //void * 是定义无类型的指针。 void **就是指向无类型指针的指针
    AnyPointer *values_;    //只要前面typedef过，这里直接写anypointer就行，就不用写void *了
} Array;

Array * ArrayCreate();

int ArrayGetLength(Array *arr);

//void ArrayAdd(Array *arr, int value);
void ArrayAdd(Array *arr, AnyPointer value);

void ArrayRemoveAt(Array *arr, int index); //移除任意一个位置

//int ArrayGet(Array *arr, int index);
AnyPointer ArrayGet(Array *arr, int index);

void ArrayDestory(Array *arr);

#endif /* Array_h */
