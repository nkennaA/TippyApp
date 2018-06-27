//
//  ViewController.m
//  Xcode Tip Calculator
//
//  Created by Nkenna Aniedobe on 6/26/18.
//  Copyright © 2018 Nkenna Aniedobe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tipControl.alpha = 0;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}
- (IBAction)onEdit:(id)sender {
    NSArray *percentages = @[@(.1),@(.15),@(.22)];
    double bill = [self.billField.text doubleValue];
    NSLog(@"bill =%f", bill);
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex]doubleValue];
    NSLog(@"tippercentage =%f", tipPercentage);
    double tip = tipPercentage*bill;
    NSLog(@"tip =%f", tip);
    double total = bill+tip;
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
    [UIView animateWithDuration:.2 animations:^{
        self.tipControl.frame = CGRectMake(21, 278, 333, 29);
        self.tipControl.alpha = 1;
    }];
    
}
- (IBAction)onEditStart:(id)sender {
}
- (IBAction)onEditEnd:(id)sender {
}


@end
