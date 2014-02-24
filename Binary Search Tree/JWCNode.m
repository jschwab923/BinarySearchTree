//
//  JWCNode.m
//  Binary Search Tree
//
//  Created by Jeff Schwab on 2/24/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import "JWCNode.h"

@implementation JWCNode

+ (instancetype)nodeWithValue:(NSInteger)value
{
    JWCNode *newNode = [JWCNode new];
    newNode.value = value;
    
    return newNode;
}

@end
