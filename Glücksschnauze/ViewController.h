//
//  ViewController.h
//  Glücksschnauze
//
//  Created by Inron on 10.03.16.
//  Copyright © 2016 Tobias Alt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *field1;
@property (weak, nonatomic) IBOutlet UILabel *field2;
@property (weak, nonatomic) IBOutlet UILabel *field3;
@property (weak, nonatomic) IBOutlet UILabel *field4;
@property (weak, nonatomic) IBOutlet UILabel *field5;
@property (weak, nonatomic) IBOutlet UILabel *field6;
@property (weak, nonatomic) IBOutlet UILabel *fieldSuper;

- (IBAction)start:(id)sender;

@end

