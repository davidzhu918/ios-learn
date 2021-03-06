//
//  BNRDrawView.m
//  TouchTracker
//
//  Created by Zixiang Zhu on 4/15/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

#import "BNRDrawView.h"

@implementation BNRDrawView

- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  
  if (self) {
    self.finishedLines = [[NSMutableArray alloc] init];
    self.backgroundColor = [UIColor grayColor];
  }
  
  return self;
}

- (void)strokeLine:(BNRLine *)line
{
  UIBezierPath *bp = [UIBezierPath bezierPath];
  bp.lineWidth = 10;
  bp.lineCapStyle = kCGLineCapRound;
  
  [bp moveToPoint:line.begin];
  [bp addLineToPoint:line.end];
  [bp stroke];
}

- (void)drawRect:(CGRect)rect
{
  // Draw finished lines in black
  [[UIColor blackColor] set];
  for (BNRLine *line in self.finishedLines) {
    [self strokeLine:line];
  }
  
  if (self.currentLine) {
    // If there is a line currently being drawn, do it in red
    [[UIColor redColor] set];
    [self strokeLine:self.currentLine];
  }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  UITouch *t = [touches anyObject];
  
  // Get location of the touch in view's coordinate system
  CGPoint location = [t locationInView:self];
  
  self.currentLine = [[BNRLine alloc] init];
  self.currentLine.begin = location;
  self.currentLine.end = location;
  
  [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  UITouch *t = [touches anyObject];
  
  // Get location of the touch in view's coordinate system
  CGPoint location = [t locationInView:self];
  
  self.currentLine.end = location;
  
  [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  [self.finishedLines addObject:self.currentLine];
  
  self.currentLine = nil;
  
  [self setNeedsDisplay];
}

@end
