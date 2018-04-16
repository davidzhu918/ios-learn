//
//  main.m
//  RandomItems
//
//  Created by Zixiang Zhu on 3/24/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // Create a mutable array object, store its address in items variable
    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
    [items addObject:backpack];
    
    BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
    [items addObject:calculator];
    
    backpack.containedItem = calculator;
    
    backpack = nil;
    calculator = nil;
    
    // For every item in the items array ...
    for (NSString *item in items) {
      // Log the description of item
      NSLog(@"%@", item);
    }
    
    // Destroy the mutable array object
    NSLog(@"Setting items to nil...");
    items = nil;
  }
  return 0;
}
