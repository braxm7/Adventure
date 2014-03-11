//
//  ajyViewController.m
//  Adventure
//
//  Created by Jian Yao Ang on 3/11/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "ajyViewController.h"

@interface ajyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *clearUpBoxesButton;
@property (weak, nonatomic) IBOutlet UIButton *eatBoxesButton;

@end

@implementation ajyViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton*)sender
{
    //get a reference to the destination view controler
    UIViewController *vc = segue.destinationViewController;
    
    //get the tile from the button (sender) that was clicked
    vc.title = sender.currentTitle;;

    
}

@end
