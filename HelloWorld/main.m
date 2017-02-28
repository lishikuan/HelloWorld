//
//  main.m
//  HelloWorld
//
//  Created by lsm on 17/2/27.
//  Copyright © 2017年 L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSLog(@"I am main.");
        //冒泡排序
        NSMutableArray * a =[NSMutableArray arrayWithObjects:@1,@2,@2,@5,@7,@4,@2, nil];
        NSLog(@"before:%@",a);
        int n = (int)a.count;
        for (int j = 0; j < n - 1; j++){
            for (int i = 0; i < n - 1 - j; i++)
            {
                if(a[i] > a[i + 1])
                {
                    [a exchangeObjectAtIndex:i withObjectAtIndex:i+1];
                }
            }
        }
        NSLog(@"exchanged:%@",a);
    
    
    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
