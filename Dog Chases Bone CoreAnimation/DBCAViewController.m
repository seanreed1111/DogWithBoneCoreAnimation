//
//  DBCAViewController.m
//  Dog Chases Bone CoreAnimation
//
//  Created by Sean Reed on 9/23/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "DBCAViewController.h"
#import "DBCAView.h"

@interface DBCAViewController ()

@end

@implementation DBCAViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    return self;
}

- (void)loadView
{
    CGRect frame = [[UIScreen mainScreen]bounds];
    DBCAView *view = [[DBCAView alloc]initWithFrame:frame];
    [self setView:view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
