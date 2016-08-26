//
//  Object.h
//  task4_DynamicArray
//
//  Created by 刘赫 on 16/8/22.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#ifndef Object_h
#define Object_h

#include <stdio.h>

//引用计数：用的时候+1，不用了就-1，都不用了应该是0，可以将对象完全销毁清空内存，不然不可以销毁
typedef struct Object_{
    int retainCount_;
} Object;


#define OBJECT_RETAIN(obj) ObjectRetain((Object *)obj) //宏只能有一行，如果要写多行，要加{}，每行后面需加\。

#define OBJECT_RELEASE(obj) ObjectRelease((Object *)obj)    //单行的宏没有{ }
#define OBJECT_RETAIN_COUNT(obj) ObjectRetainCount((Object *)obj)

void ObjectRetain(Object *obj);
void ObjectRelease(Object *obj);
int ObjectRetainCount(Object *obj);


#endif /* Object_h */
