//
//  Array.c
//  task4_DynamicArray
//
//  Created by 刘赫 on 16/8/17.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#include "Array.h"
#include <stdlib.h>
#include <string.h>
#include <assert.h>

//static int *allocMemoryByCapacity(Array *arr) {  //c语言中static函数只在当前文件内部访问，不写static是全局访问
//    return malloc(sizeof(int) * arr->capacity_); //malloc在stdlib.h中
//static void **allocMemoryByCapacity(Array *arr) {
static AnyPointer *allocMemoryByCapacity(Array *arr) {
    return malloc(sizeof(AnyPointer) * arr->capacity_);
}

Array *ArrayCreate(){
    Array *arr = malloc(sizeof(Array));
    arr->length_ = 0;                           //即将添加的数据的位置，就是[]里面的数
    arr->capacity_ = 32;                        //新int数组的容量（有多少个数）
    arr->values_ = allocMemoryByCapacity(arr);  //用于存放数据的内存。anyPointer的长度乘以capacity，得出新int数组的大小
    return arr;
}

int ArrayGetLength(Array *arr) {
    return arr->length_;
}

//void ArrayAdd(Array *arr, int value) {
void ArrayAdd(Array *arr, AnyPointer value) {
    //如果[]的数大于等于数组容量，代表数组已越界(如果容量是10，[]的数应该是0到9)
    if (arr->length_ >= arr->capacity_) {
        arr->capacity_ *= 2;                        //将数组扩容
//        int *oldValues = arr->values_;              //先将旧数据存一下
        AnyPointer *oldValues = arr->values_;
        arr->values_ = allocMemoryByCapacity(arr);  //为新数组分配内存。注意此时capacity已经乘以2了
        //把旧values内存的数据copy回来（目标内存，原内存，长度）
        memcpy(arr->values_, oldValues, arr->length_ * sizeof(AnyPointer)); //memcpy在string.h中
        free(oldValues);                            //将旧内存free
    }
    arr->values_[arr->length_] = value;
    arr->length_ += 1;
    OBJECT_RETAIN(value);   //value是anypointer，对新增的内容进行计数
}

//int ArrayGet(Array *arr, int index) {
AnyPointer ArrayGet(Array *arr, int index) {
    //断言,就是出错就停下来报错。assert在assert.h中
    assert(index >= 0 && index < arr->length_);     //如果()内条件不满足，就停下了
    return arr->values_[index];
}

void ArrayRemoveAt(Array *arr, int index) {
    assert(index >= 0 && index < arr->length_);     //首先判断index是否越界
    OBJECT_RELEASE(ArrayGet(arr, index));           //移除掉指定index的内容，并对移除的内容进行计数
    arr->length_ -= 1;                              //array减少一个位置
    //index开始所有后面的位置(arr->length)都要向前移一位
    for (int i = index; i < arr->length_; i += 1) {
        arr->values_[i] = arr->values_[i+1];
    }
}

void ArrayDestory(Array *arr) {                     //销毁
    free(arr->values_);                             //首先要销毁array里面的values
    free(arr);                                      //然后再销毁array
}