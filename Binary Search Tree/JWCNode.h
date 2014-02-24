//
//  JWCNode.h
//  Binary Search Tree
//
//  Created by Jeff Schwab on 2/24/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWCNode : NSObject

@property (nonatomic) NSInteger value;

@property (nonatomic) JWCNode *leftNode;
@property (nonatomic) JWCNode *rightNode;

+ (instancetype)nodeWithValue:(NSInteger)value;

@end
