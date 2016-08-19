//
//  main.m
//  task4_LinkedList
//
//  Created by 刘赫 on 16/8/16.
//  Copyright © 2016年 liuhe. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct Node_ {      //链子中的每一节可以看做是一个struct，一个node是一节
    int value;              //如果想让链表储存任意类型值，可以定义成void*
    struct Node_ *forward;     //指向下一个节点
    struct Node_ *backward;    //指向之前一个节点
} Node;

//Node *createNode(int value, Node *next){  //单向链表
Node *createNode(int value, Node *pre, Node *next) {
    Node *node = malloc(sizeof(Node));
    node->value = value;
    //    node->next = next;  //单向链表
    if (pre != NULL)
        pre->forward = node;
    if (next != NULL)
        next->backward = node;
    node->backward = pre;
    node->forward = next;
    return node;
}

//单向链表正向print
//void printList(Node *firstNode) {
//    for (Node *node = firstNode; node != NULL; node = node->next) {
//        printf("current node value %d\n",node->value);
//    }
//}

void printList(Node *printNode) {
    for (Node *node = printNode; node != NULL; node = node->forward) {
        printf("current node value %d\n",node->value);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //      ///////////////////////////////////////////////////
        //        //这样写重复代码太多，不安全。只要有重复代码，就应该用函数
        //        Node *first = malloc(sizeof(Node));
        //        first->value = 0;
        //        first->next = NULL;
        //
        //        Node *end = malloc(sizeof(Node));
        //        first->next = end;
        //        end->value = 1;
        //        end->next = NULL;
        //      ///////////////////////////////////////////////////
        
        ///////////////单向正向链表//////////////////////////////////
        //        Node *current = createNode(0, NULL);
        //        Node *first = current;
        //
        //        current->next = createNode(1, NULL);
        //        current = current->next;
        //
        //        current->next = createNode(2, NULL);
        //        current = current->next;
        //
        //        first = createNode(-1, first);  //在第一个node之前添加节点
        ///////////////////////////////////////////////////////////
        
        //双向链表
        Node *backward = createNode(0, NULL, NULL);
        Node *forward = backward;
        
        forward = createNode(1, forward, NULL);
        forward = createNode(2, forward, NULL);
        backward = createNode(-1, NULL, backward);
        backward = createNode(-2, NULL, backward);
        
        printList(backward);
    }
    return 0;
}
