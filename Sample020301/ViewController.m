//
//  ViewController.m
//  Sample020301
//
//  Created by tikomo on 2014/02/04.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSDictionary *dic = @{@"A":@"AAA", @"B":@"BBB", @"C":@"CCC", @"D":@"DDD", @"E":@"EEE"};
    
    NSLog(@"B = %@", dic[@"B"]);
    NSLog(@"E = %@", dic[@"E"]);
    
    // [dic valueForKey:@"A"] <- レガシーシンタックス ... Objective-Cっぽい...
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
