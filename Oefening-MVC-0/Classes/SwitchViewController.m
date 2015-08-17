//
//  SwitchViewController.m
//  Oefening-MVC-0
//
//  Created by Jonathan Provo on 14/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "SwitchViewController.h"

@interface SwitchViewController ()
@property (weak, nonatomic) IBOutlet UILabel *switchLabel;
//@property (assign, nonatomic) BOOL switchOn;
//moet niet zelf gemaakt worden, als je de swithView-outlet ook connecteert
//op deze switchView staat al een property "isOn"
@property (weak, nonatomic) IBOutlet UISwitch *switchView;

@end

@implementation SwitchViewController

//warning - Every time the switch changes values, update the label to the switch's state. You still need to create the property and IBAction.


- (IBAction)didSwitch:(id)sender {
    if (self.switchView.isOn)   {
        
        //self.switchOn = NO;
        self.switchLabel.text = @"Switch is on";
    
    } else  {
        
        //self.switchOn = YES;
        self.switchLabel.text = @"Switch is off";

    }
    
}


@end
