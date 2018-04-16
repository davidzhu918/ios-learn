//
//  BNRItem.h
//  RandomItems
//
//  Created by Zixiang Zhu on 4/1/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property(nonatomic, copy) NSString *itemName;
@property(nonatomic, copy) NSString *serialNumber;
@property(nonatomic) int valueInDollars;
@property(nonatomic, readonly, strong) NSDate *dateCreated;

@property(nonatomic, strong) BNRItem *containedItem;
@property(nonatomic, weak) BNRItem *container;

+ (instancetype)randomItem;

// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollers:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

@end
