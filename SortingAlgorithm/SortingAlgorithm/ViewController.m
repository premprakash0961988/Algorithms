//
//  ViewController.m
//  SortingAlgorithm
//
//  Created by Prem Chaurasiya on 11/11/14.
//  Copyright (c) 2014 playLikeKid. All rights reserved.
//

#import "ViewController.h"
#import "Sorter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *inputArray = @[@20,@10,@30,@80,@35,@55,@34,@1,@90,@1,@2];
//    NSArray *outputArray = [Sorter sortUsingInsertionSortWithInput:inputArray];
//    NSArray *outputArray = [Sorter sortUsingSelectionSortWithInput:inputArray];
    NSArray *outputArray = [Sorter sortUsingMergeSortWithInput:inputArray];
    NSLog(@"%@",outputArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
