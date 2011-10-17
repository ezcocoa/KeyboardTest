//
//  KeyboardTestAppDelegate.h
//  KeyboardTest
//
//  Created by baek hojun on 11. 10. 17..
//  Copyright 2011년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  KeyboardViewController;
@interface KeyboardTestAppDelegate : NSObject <UIApplicationDelegate> 
{IBOutlet KeyboardViewController *_viewController;}
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) KeyboardViewController *viewController;
@end
