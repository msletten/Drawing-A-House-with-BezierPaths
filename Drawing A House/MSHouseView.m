//
//  MSHouseView.m
//  Drawing A House
//
//  Created by Mat Sletten on 5/13/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSHouseView.h"

@implementation MSHouseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIBezierPath *housePath = [UIBezierPath bezierPath];
    housePath.lineWidth = 4.0;
    [[UIColor colorWithRed:47/255.0f green:79/255.0f blue:79/255.0f alpha:1/1.0f] setStroke];
    [housePath moveToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/4.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(1/5.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(1/5.0 * self.bounds.size.width, 3/4.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(4/5.0 * self.bounds.size.width, 3/4.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(4/5.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [housePath closePath];
    [housePath stroke];
    
    UIBezierPath *doorPath = [UIBezierPath bezierPathWithRect:CGRectMake(1/2.0 * self.bounds.size.width, 14/24.0 * self.bounds.size.height, 1/6.0 * self.bounds.size.width, 2/12.0 * self.bounds.size.height)];
    [[UIColor colorWithRed:184/255.0f green:134/255.0f blue:11/255.0f alpha:1/1.0f] setFill];
    [doorPath fill];
    
    UIBezierPath *windowPath = [UIBezierPath bezierPathWithRect:CGRectMake(2/6.0 * self.bounds.size.width, 9/24.0 * self.bounds.size.height, 1/6.0 * self.bounds.size.width, 1/12.0 * self.bounds.size.height)];
    windowPath.lineWidth = 2.0;
    [[UIColor colorWithRed:0/255.0f green:139/255.0f blue:139/255.0f alpha:8/10.0f] setStroke];
    [[UIColor colorWithRed:210/255.0f green:105/255.0f blue:30/255.0f alpha:1/1.0f] setFill];
    [windowPath stroke];
    [windowPath fill];
}


@end
