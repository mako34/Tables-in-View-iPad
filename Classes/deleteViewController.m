//
//  deleteViewController.m
//  delete
//
//  Created by Manuel Betancurt on 15/06/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import "deleteViewController.h"


@implementation deleteViewController
//@synthesize listTable;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
		
	
	//listTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, 200, 200) style:UITableViewStylePlain];  
	UITableView *listTable = [[UITableView alloc] initWithFrame:CGRectMake(100, 100, 200, 200) style:UITableViewStylePlain];  


	
	listTable.delegate = self;
	listTable.dataSource = self;
	//listTable.allowsSelection = TRUE;
	[listTable reloadData];
	
	//listTable.backgroundColor = [UIColor clearColor];
	[listTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
	[self.view addSubview:listTable];
	
	//[[self view] setNeedsDisplay];
	NSLog(@"ttt");
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
    static NSString *CellIdentifier = @"Cell";
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
    if (cell == nil) {
		
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
		
    }
	
    // Configure the cell...
    //cell.textLabel.text = [yourarray objectAtIndex:indexPath.row];
	
    return cell;
	
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
