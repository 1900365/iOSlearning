//
//  Integer.c
//  task4_DynamicArray
//
//  Created by 刘赫 on 16/8/24.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#include "Integer.h"
#include <stdlib.h>
#include "Object.h"

Integer *IntegerNew(int32_t value){
    Integer *ins = malloc(sizeof(Integer));
//    ObjectRetain(ins); //强制将Integer转成Object，会将Integer按Object的内存类型进行访问。Integer第一个是int，Object第一个也是int，这块内存是不变的，因此可以相互转换。
                       //注意:object类型不能转成integer，因为object类型中只定义了一个成员，而Integer中定义了2个成员。
//    ObjectRetain((Object *)ins);    //手工写类型转换
    OBJECT_RETAIN(ins);
    ins->value_ = value;
    return ins;
}

int32_t IntegerGet(Integer *ins){
    return ins->value_;
}