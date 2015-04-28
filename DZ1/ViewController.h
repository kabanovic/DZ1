//
//  ViewController.h
//  DZ1
//
//  Created by Аким on 26.04.15.
//  Copyright (c) 2015 Akim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
 

    BOOL isHidden;
 
}
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *labelPlaceHolder;

- (IBAction)tFChanged:(id)sender;

@end

