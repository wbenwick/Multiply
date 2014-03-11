//
//  FLXViewController.m
//  Multiply
//
//  Created by Administrator on 3/10/14.
//  Copyright (c) 2014 FileLogix. All rights reserved.
//

#import "FLXViewController.h"

@interface FLXViewController ()
@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;
@property (strong, nonatomic) IBOutlet UIButton *myCalculateButton;

@end

@implementation FLXViewController

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

// Listed for touch to happen, dismiss keyboard

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.myNumber resignFirstResponder];
}


- (IBAction)onCalculateButtonPressed:(id)sender {
//    NSNumber *myNumberAsInt = [NSNumber numberWithInt:[self.myNumber.text intValue]];
//    NSNumber *myMultiplierAsInt = [NSNumber numberWithInt:[self.myMultiplier.text intValue]];

    int myNumberAsInt = [self.myNumber.text intValue];
    int myMultiplierAsInt = [self.myMultiplier.text intValue];

    int answer = myNumberAsInt * myMultiplierAsInt;
    
    self.myAnswer.text=[NSString stringWithFormat:@"%d", answer];
    
    
}

@end
