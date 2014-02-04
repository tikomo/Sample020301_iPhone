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
    
    // 数値を保持したいケース
    // 配列と同様、dictionaryも数値はNSNumberクラスの数値オブジェクトにして保持します
    NSDictionary *dic2 = @{@"A":@1, @"B":@2, @"C":@3, @"D":@4, @"E":@5};
    NSLog(@"A = %d", [dic2[@"A"] intValue]);
    NSLog(@"D = %d", [dic2[@"D"] intValue]);
    
    
    // 要素の追加/削除た値の変更ができるミュータブルな辞書を使う
    // サイズを指定しているけど、少なくても多くなっても大丈夫
    NSMutableDictionary *dic3 = [NSMutableDictionary dictionaryWithCapacity:3];
    
    // 要素を追加する
    dic3[@"A"] = @"AAA";
    dic3[@"B"] = @"BBB";
    dic3[@"C"] = @"CCC";
    
    NSLog(@"A = %@", dic3[@"A"]);
    NSLog(@"B = %@", dic3[@"B"]);
    NSLog(@"C = %@", dic3[@"C"]);
    
    dic3[@"B"] = @"1234567890";
    NSLog(@"B = %@", dic3[@"B"]);
    
    [dic3 setValue:@"XYZ" forKey:@"B"];
    [dic3 setValue:@"DDD" forKey:@"D"];
    
    NSLog(@"B = %@", dic3[@"B"]); // XYZ
    NSLog(@"D = %@", dic3[@"D"]); // DDD
    
    
    // [dic3 setObject:@"xxxxx" forKey:@"xxxxx"] <- レガシーシンタックス
    // [dic3 setValue:@"xxxxx" forKey:@"xxxxx"] <- こっちのが新しい
    
    [self test1];
    [self test2];
    
}

- (void) test1 {
    NSLog(@"%@", @"----- call test1");

    // 指定のキーを削除する
    
    NSMutableDictionary *dic =[NSMutableDictionary dictionaryWithCapacity:4];
    dic[@"A"] = @"AAA";
    dic[@"B"] = @"BBB";
    dic[@"C"] = @"CCC";
    dic[@"D"] = @"DDD";
    
    NSLog(@"count = %d", dic.count);
    NSLog(@"dic = %@", dic);
    
    [dic removeObjectForKey:@"C"];
    
    NSLog(@"count = %d", dic.count);
    NSLog(@"dic = %@", dic);
    
    [dic removeAllObjects];
    
    NSLog(@"count = %d", dic.count);
    NSLog(@"dic = %@", dic);
    
}

- (void)test2 {
    NSLog(@"%@", @"----- call test2");
    
    // 構造体
    
    struct _box {
        uint width;
        uint height;
        char type;
    };
    
    typedef struct _boxA {
        uint width;
        uint height;
        char type;
    } Box;
    
    struct _box myBox;
    myBox.width = 100;
    myBox.height = 200;
    myBox.type = 'C';

    Box myBox1; // typedefしたんで struct をつけなくていい
    myBox1.width = 1;
    myBox1.height = 20;
    myBox1.type = 'A';
    
    NSLog(@"%d", myBox.height);
    NSLog(@"%d", myBox1.height);
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
