//
//  SliderViewController.m
//  Oefening-MVC-0
//
//  Created by Jonathan Provo on 14/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "SliderViewController.h"

@interface SliderViewController ()

@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderView;


@end

@implementation SliderViewController


- (IBAction)changeValue:(id)sender {
    
    self.sliderLabel.text = [NSString stringWithFormat:@"%f", self.sliderView.value ];
    
}

//warning - Every time the slider changes values, update the label to the slider's value. You still need to create the property and IBAction.

@end
