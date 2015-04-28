//
//  Animation.h
//  DZ1
//
//  Created by Аким on 26.04.15.
//  Copyright (c) 2015 Akim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animation : NSObject


+(void) changeColor: (UIView *) view Color: (UIColor *) color;

+(void) changePosition: (UILabel *) label Alpha: (int) alpha;
@end
