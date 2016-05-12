//
//  ObjectiveCviewController.m
//  Testing
//
//  Created by Ravikumar Bukka on 5/11/16.
//  Copyright © 2016 Ravikumar Bukka. All rights reserved.
//

#import "ObjectiveCviewController.h"


@interface ObjectiveCviewController ()


@end



@implementation ObjectiveCviewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _inputTextView.delegate = self;
    _inputTextView.text = @"Input text from ObjectiveC file here...";
    _inputTextView.textColor = [UIColor lightGrayColor];
    
  
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma textViewDelegate Methods

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if ([_inputTextView.text isEqualToString:@"Input text from ObjectiveC file here..."]) {
        _inputTextView.text = @"";
        _inputTextView.textColor = [UIColor blackColor]; //optional
    }
    [_inputTextView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([_inputTextView.text isEqualToString:@""]) {
        _inputTextView.text = @"Input text from ObjectiveC file here...";
        _inputTextView.textColor = [UIColor lightGrayColor]; //optional
    }
    [_inputTextView resignFirstResponder];
}

@end
