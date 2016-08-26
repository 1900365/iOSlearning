//
//  Integer.h
//  task4_DynamicArray
//
//  Created by 刘赫 on 16/8/24.
//  Copyright © 2016年 liuhe. All rights reserved.
//




//自定义的类型，可以理解为继承自object类型
//这个例子是用来包装int类型，用来演示如何用object来进行计数管理

#ifndef Integer_h
#define Integer_h

#include <stdio.h>

typedef struct Integer_{
    int retainCount_;   //必须放在第一位，不然在后面强制类型转后会出错
    int32_t value_;     //为兼容所有平台，用int32，Integer用来封装的值
} Integer;

Integer *IntegerNew(int32_t value);
int32_t IntegerGet(Integer *ins);

#endif /* Integer_h */
