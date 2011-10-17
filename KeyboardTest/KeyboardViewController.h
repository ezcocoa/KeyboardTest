//
//  KeyboardViewController.h
//  KeyboardTest
//
//  Created by baek hojun on 11. 10. 17..
//  Copyright 2011년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyboardViewController : UIViewController {
  IBOutlet UITextField *_textField;
  IBOutlet UITextView *_textView;
  
}
- (IBAction)actionCancel:(id)sender;
@end
