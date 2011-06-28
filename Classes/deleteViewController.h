//
//  deleteViewController.h
//  delete
//
//  Created by Manuel Betancurt on 15/06/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface deleteViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{

	//UITableView *listTable;

	NSArray *cuncho;
}

//@property (nonatomic, retain) UITableView *listTable;
@property (nonatomic, retain) NSArray *cuncho;
//@property (nonatomic, retain) IBOutlet UITableView *listTable;



@end

