//
//  ViewController.m
//  AutoLayoutScrollPractice
//
//  Created by Terry Bu on 3/18/15.
//  Copyright (c) 2015 Terry Bu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"view frame: %@", NSStringFromCGSize(self.view.frame.size));
    
    NSLog(@"container frame: %@", NSStringFromCGSize(self.containerView.frame.size));

    NSLog(@"scrollview frame: %@", NSStringFromCGSize(self.scrollView.frame.size));

    self.scrollView.contentSize = CGSizeMake(300, 1000);
    NSLog(@"scrollview content size: %@", NSStringFromCGSize(self.scrollView.contentSize));

    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, self.scrollView.contentSize.height-100, 300, 50)];
    label.text = @"sfjsapfjsapdifjsdapfsdpaifpsai";
    
    [self.scrollView addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
