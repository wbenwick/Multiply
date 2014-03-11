//
//  FLXViewController.m
//  Multiply
//
//  Created by Wes Benwick on 3/10/14.
//  Copyright (c) 2014 FileLogix. All rights reserved.
//

#import "FLXViewController.h"

@interface FLXViewController ()
@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;
@property (strong, nonatomic) IBOutlet UIButton *myCalculateButton;
@property (strong, nonatomic) IBOutlet UISlider *mySlider;

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

- (IBAction)onNumberChanged:(id)sender {
    self.myAnswer.text = @"";
}

- (IBAction)onNumberEditChanged:(id)sender {
    self.myAnswer.text = @"";
}

// When slider moves, adjust multiplier value

- (IBAction)onSliderTouchDragInside:(id)sender {
    NSNumber *multiplier = [NSNumber numberWithFloat:self.mySlider.value];
    NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:multiplier numberStyle:NSNumberFormatterNoStyle];
//    NSLog(@"Slider moved %@", numberStr);
    self.myMultiplier.text = numberStr;
    
}

// When calculate button is pressed, perform calculation.  Would be better if this were its
// own function.

- (IBAction)onCalculateButtonPressed:(id)sender {

    int myNumberAsInt = [self.myNumber.text intValue];
    int myMultiplierAsInt = [self.myMultiplier.text intValue];

    int answer = myNumberAsInt * myMultiplierAsInt;
    
    self.myAnswer.text=[NSString stringWithFormat:@"%d", answer];
    
    if (answer > 20) {
        [[self view] setBackgroundColor:[UIColor greenColor]];
    }
    
    else {
        [[self view] setBackgroundColor:[UIColor whiteColor]];
    }
}

@end
