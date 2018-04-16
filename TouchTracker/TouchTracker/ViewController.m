//
//  ViewController.m
//  TouchTracker
//
//  Created by Zixiang Zhu on 4/15/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"
#import "BNRDrawView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView
{
  self.view = [[BNRDrawView alloc] initWithFrame:CGRectZero];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
