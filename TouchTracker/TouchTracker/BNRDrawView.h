//
//  BNRDrawView.h
//  TouchTracker
//
//  Created by Zixiang Zhu on 4/15/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "BNRLine.h"

@interface BNRDrawView : UIView

@property (nonatomic, strong) BNRLine *currentLine;
@property (nonatomic, strong) NSMutableArray *finishedLines;

@end
