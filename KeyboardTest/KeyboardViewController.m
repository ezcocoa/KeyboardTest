//
//  KeyboardViewController.m
//  KeyboardTest
//
//  Created by baek hojun on 11. 10. 17..
//  Copyright 2011년 __MyCompanyName__. All rights reserved.
//

#import "KeyboardViewController.h"

@implementation KeyboardViewController


- (void)dealloc {
  [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
  [_textView release];
  [_textField release];
  [super dealloc];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
  return YES;
}

- (void)keyboardWillShow:(NSNotification*)notification {
  NSDictionary *info = [notification userInfo];
  
  CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
  NSLog(@"%@, %f, %f", info, kbSize.width, kbSize.height);
  _textView.text = [NSString stringWithFormat:@"%@",info];
}

- (IBAction)actionCancel:(id)sender {
  [_textField resignFirstResponder];
}

/**
 *
 *  @brief UITextField Delegate Methods
 */
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
  
  return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
  return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
  return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  [textField resignFirstResponder];
  return YES;
}
@end
