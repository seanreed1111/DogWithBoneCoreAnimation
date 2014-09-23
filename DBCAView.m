//
//  DBCAView.m
//  Dog Chases Bone CoreAnimation
//
//  Created by Sean Reed on 9/23/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "DBCAView.h"

@implementation DBCAView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // load background image
        UIImageView *backgroundImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Green_Grass_Texture.jpg"]];
        [self addSubview:backgroundImage];
        
        
        //create first layer for dog image
        dogLayer = [[CALayer alloc]init];
        [dogLayer setBounds:CGRectMake(0, 0, 43.0, 85.0)];
        [dogLayer setPosition:CGPointMake(160, 100)];
        [dogLayer setZPosition:0.0];
        [dogLayer setBackgroundColor:[UIColor clearColor].CGColor];
        
        //load dog image onto the layer
        UIImage *dogLayerImage = [UIImage imageNamed:@"boxer-dog.jpg"];
        
        
        
        //load dog layer onto the viewLayer which contains the background image
        
        // create second layer for the bone image but DON'T Load because we want the image to load when the screen is touched
        
        //load bone Layer onto the view
        
    }
    return self;
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
