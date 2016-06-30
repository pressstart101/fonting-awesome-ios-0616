//
//  ViewController.m
//  FISFontAwesome
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "ViewController.h"
#import "FontAwesomeKit/FontAwesomeKit.h"
#import "CWStatusBarNotification.h"

@interface ViewController ()
@property (strong, nonatomic) FAKFontAwesome *starIcon;
@property (strong, nonatomic) FAKZocial *twitterIcon;
@property (strong, nonatomic)  CWStatusBarNotification *notification;
@property (strong, nonatomic) FAKFoundationIcons *bookmarkIcon;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.notification = [CWStatusBarNotification new];
    self.notification.notificationLabelBackgroundColor = [UIColor blackColor];
    self.notification.notificationLabelTextColor = [UIColor greenColor];

    
    
    
    
    self.starIcon = [FAKFontAwesome starIconWithSize:105];
    [self.starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor purpleColor]];
     [self.starIcon attributedString];
    [self.buttonLabel setAttributedTitle:[self.starIcon attributedString] forState:UIControlStateNormal];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonTapped:(id)sender {

    if ([self.buttonLabel.currentAttributedTitle isEqual: [self.starIcon attributedString]]) {
        self.twitterIcon = [FAKZocial twitterIconWithSize:105];
        [self.twitterIcon addAttribute:NSForegroundColorAttributeName value:[UIColor purpleColor]];
        [self.twitterIcon attributedString];
        [self.buttonLabel setAttributedTitle:[self.twitterIcon attributedString] forState:UIControlStateNormal];

    }else{
        self.starIcon = [FAKFontAwesome starIconWithSize:105];
        [self.starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor purpleColor]];
        [self.starIcon attributedString];
        [self.buttonLabel setAttributedTitle:[self.starIcon attributedString] forState:UIControlStateNormal];
    }
    
    
    
    [self.notification dismissNotification];
}

- (IBAction)touchedDown:(id)sender {
    
    self.bookmarkIcon = [FAKFoundationIcons bookmarkIconWithSize:15];
    [self.notification displayNotificationWithAttributedString:[self.bookmarkIcon attributedString] completion:nil];
    
}

//- (IBAction)release:(id)sender {
//    [self.notification notificationTappedBlock];
//}
@end
