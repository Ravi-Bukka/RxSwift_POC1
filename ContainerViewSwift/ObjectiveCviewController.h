//
//  ObjectiveCviewController.h
//  Testing
//
//  Created by Ravikumar Bukka on 5/11/16.
//  Copyright © 2016 Ravikumar Bukka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjectiveCviewController : UIViewController <UITextViewDelegate>


@property (weak, nonatomic) IBOutlet UITextView *inputTextView;


@property (weak, nonatomic) IBOutlet UITextField *inputTextField;


@end

