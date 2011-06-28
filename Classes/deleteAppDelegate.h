//
//  deleteAppDelegate.h
//  delete
//
//  Created by Manuel Betancurt on 15/06/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>

@class deleteViewController;

@interface deleteAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    deleteViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet deleteViewController *viewController;

@end

