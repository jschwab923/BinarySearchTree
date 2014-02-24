//
//  JWCViewController.m
//  Binary Search Tree
//
//  Created by Jeff Schwab on 2/24/14.
//  Copyright (c) 2014 Jeff Schwab. All rights reserved.
//

#import "JWCViewController.h"
#import "JWCBinarySearchTree.h"
#import "SSLinkedList.h"

@interface JWCViewController ()

@end

@implementation JWCViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self testBinaryTree];
    [self testLinkedList];
}

- (void)testBinaryTree
{
    JWCBinarySearchTree *binaryTree = [JWCBinarySearchTree new];
    for (NSInteger i = 20; i > 0; i--) {
        NSInteger number = (NSInteger)rand() % 20;
        [binaryTree addValue:number];
    }
    [binaryTree addValue:20];
    [binaryTree printTree];
    
    JWCNode *nodeForValue = [binaryTree findObjectForValue:20];
    
    NSLog(@"%d", nodeForValue.value);
}

-(void) testLinkedList
{
    SSLinkedList *linkedList = [SSLinkedList new];
    for (NSInteger i=0; i< 20; i++) {
        [linkedList push:i];
    }
    
    NSLog(@"%d",[linkedList pop].value);
    
    NSLog(@"%d",[linkedList findNodeForValue:6].value);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
