//
//  ViewController.m
//  DZ1
//
//  Created by Аким on 26.04.15.
//  Copyright (c) 2015 Akim. All rights reserved.
//

#import "ViewController.h"
#import "Animation.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIView *viewGroundColour;


- (IBAction)actionBlue:(id)sender;
- (IBAction)actionRed:(id)sender;
- (IBAction)actionGreen:(id)sender;


@property (weak, nonatomic) IBOutlet UIView *viewButtonBlue;
@property (weak, nonatomic) IBOutlet UIView *viewButtonRed;
@property (weak, nonatomic) IBOutlet UIView *viewButtonGreen;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    isHidden = NO;
    self.textField.delegate = self;
    [self setView];
}


-(void) setView {
    
    self.textField.layer.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.50].CGColor;
    self.textField.layer.cornerRadius = 6.0;

    
    
    
    self.viewGroundColour.backgroundColor = [UIColor blackColor];
    self.viewGroundColour.layer.cornerRadius = 6.0;
    self.viewButtonBlue.layer.cornerRadius = 7.0;
    self.viewButtonRed.layer.cornerRadius = 7.0;
    self.viewButtonGreen.layer.cornerRadius = 7.0;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self.textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}



- (IBAction)actionBlue:(id)sender {

        [Animation changeColor:self.viewGroundColour Color:[UIColor blueColor]];
    
    
}

- (IBAction)actionRed:(id)sender {

        [Animation changeColor:self.viewGroundColour Color:[UIColor redColor]];
}


- (IBAction)actionGreen:(id)sender {

        [Animation changeColor:self.viewGroundColour Color:[UIColor greenColor]];
}

- (IBAction)tFChanged:(id)sender {
    if (self.textField.text.length == 0) {
        if (isHidden) {
        [Animation changePosition:self.labelPlaceHolder Alpha:1];
        isHidden = NO;
    }
    }
    
    else {
        if (!isHidden) {
         [Animation changePosition:self.labelPlaceHolder Alpha:0];
        isHidden = YES;
    }
    }
    
    
}
@end
