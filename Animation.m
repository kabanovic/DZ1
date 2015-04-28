//
//  Animation.m
//  DZ1
//
//  Created by Аким on 26.04.15.
//  Copyright (c) 2015 Akim. All rights reserved.
//

#import "Animation.h"

@implementation Animation



+(void) changeColor: (UIView *) view Color: (UIColor *) color {
    
    CATransition *animation = [CATransition animation];
    animation.type = kCATransitionFade;
    animation.duration = 0.35;
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [animation setFillMode:kCAFillModeBoth];
    
    [view.layer addAnimation:animation forKey:@"Fade"];
    view.backgroundColor = color;
}


+(void) changePosition: (UILabel *) label Alpha: (int) alpha {
    
    CATransition *animation = [CATransition animation];
    animation.type = kCATransitionPush;
    
    if (alpha == 0) {
        animation.subtype = kCATransitionFromLeft;
    }
    
    else {
        animation.subtype = kCATransitionFromRight;
    }
    
    animation.duration = 0.30;
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [animation setFillMode:kCAFillModeBoth];
    
    [label.layer addAnimation:animation forKey:@"Fade"];
    label.alpha = alpha;
}



@end
