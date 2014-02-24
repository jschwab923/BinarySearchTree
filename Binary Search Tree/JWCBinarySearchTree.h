//
//  JWCBinarySearchTree.h
//  Binary Search Tree
//
//  Created by Jeff Schwab on 2/24/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWCNode.h"

@interface JWCBinarySearchTree : NSObject

@property (nonatomic) JWCNode *root;

- (void)addValue:(NSInteger)value;
- (JWCNode *)findObjectForValue:(NSInteger)value;

- (void)printTree;


@end
