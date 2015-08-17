//
//  SegmentedControlViewController.m
//  Oefening-MVC-0
//
//  Created by Jean Smits on 17/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "SegmentedControlViewController.h"

@interface SegmentedControlViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SegmentedControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)changeBackgroundColor:(id)sender {
    if ([sender selectedSegmentIndex] == 1)  {
        self.view.backgroundColor = [UIColor blackColor];
        self.label.text = @"it's bad luck";
    
    } else  {
        self.view.backgroundColor = [UIColor whiteColor];
        self.label.text = @"white kitty is going to eat you";

    }
}




@end
