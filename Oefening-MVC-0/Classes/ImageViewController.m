//
//  ImageViewController.m
//  Oefening-MVC-0
//
//  Created by Jonathan Provo on 14/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ImageViewController

- (IBAction)didTapButton:(UIButton *)button
{
    //self.imageView.image = [UIImage imageNamed:@"emoji"];
    
    NSArray *imageArray = [ImageViewController getImageArray];
    UIImage *thisPineapple = imageArray[[ImageViewController generateRandomPlaceInArray: imageArray]];
    
    while([thisPineapple isEqual:self.imageView.image]) {
        thisPineapple = imageArray[[ImageViewController generateRandomPlaceInArray: imageArray]];
    }
    
    self.imageView.image = thisPineapple;
    
    //warning - Every time you press the button, select another image. Be sure to check out the UIImageView's scaling modes. The UIImageView is `NOT` yet connected to a property and the UIButton is `NOT` yet connected to this IBAction.
}




+ (NSUInteger)generateRandomPlaceInArray:(NSArray*)array
{
    return arc4random_uniform(array.count - 1);
}


+ (NSArray *)getImageArray
{
   NSArray *imageArray =
    [NSArray arrayWithObjects: [UIImage imageNamed:@"pineapple1"], [UIImage imageNamed:@"pineapple2"], [UIImage imageNamed:@"pineapple3"], [UIImage imageNamed:@"pineapple4"], [UIImage imageNamed:@"pineapple5"], [UIImage imageNamed:@"pineapple6"], nil];
    return imageArray;
}

@end
