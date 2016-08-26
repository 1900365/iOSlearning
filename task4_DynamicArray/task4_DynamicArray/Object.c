//
//  Object.c
//  task4_DynamicArray
//
//  Created by 刘赫 on 16/8/22.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#include "Object.h" //引用自定义头文件用" "
#include <stdlib.h> //引用库的头文件用< >


void ObjectRetain(Object *obj) {
    obj->retainCount_ += 1;
}

void ObjectRelease(Object *obj) {
    obj->retainCount_ -= 1;
    
    if (obj->retainCount_ <= 0) {
        free(obj);
        printf("object released\n");
    }
}

int ObjectRetainCount(Object *obj) {
    return obj->retainCount_;
}