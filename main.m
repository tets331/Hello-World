//
//  main.m
//  HelloWorld
//
//  Created by Tetsuya Yamamoto on 2014/05/03.
//  Copyright (c) 2014年 Tetsuya Yamamoto. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString* today(NSString *);

int main(int argc, const char *argv[])
{
    NSLog(@"Hello, World!");
    NSLog(@"now:%@", today(@"ja_JP"));
    
    return 0;
}

NSString* today(NSString *locale)
{
    NSLocale *localer;
    localer = [[NSLocale alloc] initWithLocaleIdentifier:locale];
    
    NSDate *today;
    
    today = [[NSDate alloc] init];
    
    return [today descriptionWithLocale:localer];
}

