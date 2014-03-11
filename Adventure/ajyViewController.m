//
//  ajyViewController.m
//  Adventure
//
//  Created by Jian Yao Ang on 3/11/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "ajyViewController.h"
#import "AdventureViewController.h"

@interface ajyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *clearUpBoxesButton;
@property (weak, nonatomic) IBOutlet UIButton *eatBoxesButton;
@property (weak, nonatomic) IBOutlet UITextField *protaganistName;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ajyViewController

-(void)viewDidLoad{
    
}

- (void)viewWillAppear:(BOOL)animated
{
    NSString *user = self.protaganistName.text;
    [self changeProtaganist: user];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton*)sender
{
    //get a reference to the destination view controler
    UIViewController *vc = segue.destinationViewController;
    
    //get the tile from the button (sender) that was clicked
    vc.title = sender.currentTitle;;

    
}
- (IBAction)onUserChanged:(id)sender {
    NSString *user = self.protaganistName.text;
    [self changeProtaganist: user];
    //[self.view endEditing:YES];
    //[self.protaganistName resignFirstResponder];
    
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.protaganistName resignFirstResponder];
}

- (IBAction)unwindFromDestinationViewController:(UIStoryboardSegue*)sender
{
    AdventureViewController *vc = sender.sourceViewController;

    self.storyEndingLabel.text = vc.title;

}

- (void) changeProtaganist: (NSString*) name
{
    //get the text from the text view
    //NSString *text = self.textView.text;
    
    NSString *myString = @" wakes up in the Mobile Maker space surrounded by empty pizza boxes.";
    
    NSString *resultString = [name stringByAppendingString:myString];
    
    self.textView.text = resultString;
    

}




@end
