//
//  JWCBinarySearchTree.m
//  Binary Search Tree
//
//  Created by Jeff Schwab on 2/24/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import "JWCBinarySearchTree.h"

@implementation JWCBinarySearchTree

- (void)addValue:(NSInteger)value
{
    self.root = [self addValueToTreeWithRoot:self.root forValue:value];
}

- (JWCNode *)addValueToTreeWithRoot:(JWCNode *)root forValue:(NSInteger)value
{
    if (!root) {
        return [JWCNode nodeWithValue:value];
    } else {
        if (value < root.value) {
            root.leftNode = [self addValueToTreeWithRoot:root.leftNode forValue:value];
        } else if (value > root.value) {
            root.rightNode = [self addValueToTreeWithRoot:root.rightNode forValue:value];
        }
    }
    return root;
}

- (JWCNode *)findObjectForValue:(NSInteger)value
{
    JWCNode *theNode = [self findObjectForValue:value node:self.root];
    if (theNode == nil) {
        return [JWCNode nodeWithValue:-1];
    } else {
        return theNode;
    }
}

- (JWCNode *)findObjectForValue:(NSInteger)value node:(JWCNode *)node
{
    if (node) {
        if (value < node.value) {
            return [self findObjectForValue:value node:node.leftNode];
        } else if (value > node.value) {
            return [self findObjectForValue:value node:node.rightNode];
        }
    }
    return node;
}

-(void) printTree
{
    [self printTreeWithNode:self.root withSpace:@""];
}

-(void) printTreeWithNode:(JWCNode *) node withSpace:(NSString*)space
{
    if (node) {
        NSLog(@"%@%d",space,node.value);
        [self printTreeWithNode:node.leftNode withSpace:[NSString stringWithFormat:@".%@",space]];
        [self printTreeWithNode:node.rightNode withSpace:[NSString stringWithFormat:@".%@",space]];
    }
}

@end
