//
//  ViewController.m
//  Glücksschnauze
//
//  Created by Inron on 10.03.16.
//  Copyright © 2016 Tobias Alt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize field1;
@synthesize field2;
@synthesize field3;
@synthesize field4;
@synthesize field5;
@synthesize field6;
@synthesize fieldSuper;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)start:(id)sender {

    int results[6];
    int tmp;
    for (int i = 0; i < 6; i++) {
        tmp = [self generate];
        for (int j = 0; j<i; j++) {
            if (results[j] == tmp) {
                tmp = [self generate];
            }
        }
        results[i] = tmp;
    }
    
    int k;
    for (int i = 5; i >= 1; i--) {
        for (int j = 0; j <= i-1; j++) {
            if (results[j] >= results[i]) {
                k = results[i];
                results[i] = results[j];
                results[j] = k;
            }
        }
    }
    
    NSString *result1 = [[NSString alloc] initWithFormat:@"%d", results[0]];
    [self.field1 setText:result1];
    NSString *result2 = [[NSString alloc] initWithFormat:@"%d", results[1]];
    [self.field2 setText:result2];
    NSString *result3 = [[NSString alloc] initWithFormat:@"%d", results[2]];
    [self.field3 setText:result3];
    NSString *result4 = [[NSString alloc] initWithFormat:@"%d", results[3]];
    [self.field4 setText:result4];
    NSString *result5 = [[NSString alloc] initWithFormat:@"%d", results[4]];
    [self.field5 setText:result5];
    NSString *result6 = [[NSString alloc] initWithFormat:@"%d", results[5]];
    [self.field6 setText:result6];
    
    int super = 1 + arc4random() % 9;

    NSString *resultSuper = [[NSString alloc] initWithFormat:@"%d", super];
    [self.fieldSuper setText:resultSuper];
    
}

- (int)generate {
    return 1 + arc4random() % 49;
}



@end






