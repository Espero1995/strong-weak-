//
//  main.m
//  weak和strong的用法
//
//  Created by Espero on 2017/8/11.
//  Copyright © 2017年 Espero. All rights reserved.
//

//知识点：
//赋值给weak变量后这块内存会马上被释放。而分配给strong变量的会等到这个变量的生命周期结束后，这块内存才被释放(不用关键字weak修饰的变量默认为strong变量)。
#import <Foundation/Foundation.h>

#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        __weak Person *A;
        {
        Person *B=[[Person alloc]init];
        B.name=@"我是实例B";
        
            A=B;
        NSLog(@"%p----------%p",A,B);
        NSLog(@"%@---------%@",A.name,B.name);

        NSLog(@"%p------------%@",A,A.name);
        }
       
    }
    return 0;
}
