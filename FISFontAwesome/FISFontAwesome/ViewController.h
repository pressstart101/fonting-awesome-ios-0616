//
//  ViewController.h
//  FISFontAwesome
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonLabel;
- (IBAction)buttonTapped:(id)sender;

- (IBAction)touchedDown:(id)sender;
//- (IBAction)release:(id)sender;

@end

