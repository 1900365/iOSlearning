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

static int *allocMemoryByCapacity(Array *arr) {  //c语言中static函数只在当前文件内部访问，不写static是全局访问
    return malloc(sizeof(int) * arr->capacity_); //malloc在stdlib.h中
}

Array *ArrayCreate(){
    Array *arr = malloc(sizeof(Array));
    arr->length_ = 0;                           //即将添加的数据的位置，就是[]里面的数
    arr->capacity_ = 32;                        //新int数组的容量（有多少个数）
    arr->values_ = allocMemoryByCapacity(arr);  //用于存放数据的内存。int的长度乘以capacity，得出新int数组的大小
    return arr;
}

int ArrayGetLength(Array *arr) {
    return arr->length_;
}

void ArrayAdd(Array *arr, int value) {
    //如果[]的数大于等于数组容量，代表数组已越界(如果容量是10，[]的数应该是0到9)
    if (arr->length_ >= arr->capacity_) {
        arr->capacity_ *= 2;                        //将数组扩容
        int *oldValues = arr->values_;              //先将旧数据存一下
        arr->values_ = allocMemoryByCapacity(arr);  //为新数组分配内存。注意此时capacity已经乘以2了
        //把旧values内存的数据copy回来（目标内存，原内存，长度）
        memcpy(arr->values_, oldValues, arr->length_ * sizeof(int)); //memcpy在string.h中
        free(oldValues);                            //将旧内存free
    }
    arr->values_[arr->length_] = value;
}

int ArrayGet(Array *arr, int index) {
    //断言,就是出错就停下来报错。assert在assert.h中
    assert(index >= 0 && index < arr->length_);     //如果()内条件不满足，就停下了
    return arr->values_[index];
}

void ArrayDestory(Array *arr) {                     //销毁
    free(arr->values_);                             //首先要销毁array里面的values
    free(arr);                                      //然后再销毁array
}