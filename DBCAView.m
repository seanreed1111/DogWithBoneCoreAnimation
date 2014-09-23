//
//  DBCAView.m
//  Dog Chases Bone CoreAnimation
//
//  Created by Sean Reed on 9/23/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "DBCAView.h"

@implementation DBCAView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // load background image
        UIImageView *backgroundImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Green_Grass_Texture.jpg"]];
        [self addSubview:backgroundImage];
        
        
        //create first layer for dog image
        dogLayer = [[CALayer alloc]init];
        [dogLayer setBounds:CGRectMake(0, 0, 70, 70)];
        [dogLayer setPosition:CGPointMake(160, 100)];
        [dogLayer setZPosition:0.0];
        [dogLayer setBackgroundColor:[UIColor clearColor].CGColor];
        
        //load dog image onto the doglayer
        UIImage *dogLayerImage = [UIImage imageNamed:@"boxer-dog.jpg"];
        CGImageRef image = [dogLayerImage CGImage];
        [dogLayer setContents:(__bridge id)image];
        [dogLayer setContentsRect:CGRectMake(-0.1, -0.1, 1.2, 1.2)];
        [dogLayer setContentsGravity:kCAGravityResizeAspect];
        
        
        //load dog layer onto the viewLayer which contains the background image
        
        [[self layer] addSublayer:dogLayer];
        
        // create second layer for the bone image but DON'T Load because we want the image to load when the screen is touched
        
        boneLayer = [[CALayer alloc]init];
        [boneLayer setBounds:CGRectMake(0, 0, 60, 70)];
        [boneLayer setPosition:CGPointMake(0, 0)];
        
        [boneLayer setBackgroundColor:[UIColor clearColor].CGColor];
        [boneLayer setZPosition:5];
        
        //load bone Layer onto the view
        [[self layer]addSublayer:boneLayer];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self];
    
    CABasicAnimation *dogMovementAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    [dogMovementAnimation setFromValue:[NSValue valueWithCGPoint:[[dogLayer presentationLayer] position]]];
    [dogMovementAnimation setToValue:[NSValue valueWithCGPoint:touchPoint]];
    [dogMovementAnimation setDuration:2.0];
    
    [dogLayer setPosition:touchPoint];
    
    [dogLayer addAnimation:dogMovementAnimation forKey:@"dogAnimation"];
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
