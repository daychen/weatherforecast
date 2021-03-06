//
//  SearchFormTableViewController.m
//  weatherforecast
//
//  Created by YA CHEN on 22/11/15.
//  Copyright (c) 2015 YA CHEN. All rights reserved.
//

#import "SearchFormTableViewController.h"

@interface SearchFormTableViewController ()<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *streetTextField;
@property (strong, nonatomic) IBOutlet UITextField *cityTextField;
@property (strong, nonatomic) IBOutlet UISegmentedControl *degreeSegment;



@property (strong,nonatomic)NSString *searchStreet;
@property (strong,nonatomic)NSString *searchCity;
@property (strong,nonatomic)NSString *searchState;
@property (strong,nonatomic)NSString *searchDegree;



@end

@implementation SearchFormTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.streetTextField.delegate=self;
    
    
    [self initNavigationView];
    self.view.backgroundColor=[UIColor grayColor];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
}

-(void)initNavigationView{
    
    UIBarButtonItem *backbtn=[[UIBarButtonItem alloc]initWithTitle:@"✖️" style:UIBarButtonItemStylePlain target:self action:@selector(tapSearch:)];
    
    UIBarButtonItem *searchbtn=[[UIBarButtonItem alloc]initWithTitle:@"✔️" style:UIBarButtonItemStylePlain target:self action:@selector(tapSearch:)];
    
    
    self.navigationItem.leftBarButtonItem=backbtn;
    self.navigationItem.rightBarButtonItem=searchbtn;
    
    
    [self.navigationController.navigationBar setBackgroundColor:[UIColor grayColor]];

}

- (IBAction)chooseDegree:(UISegmentedControl *)sender {
    
    
    self.searchDegree=[sender titleForSegmentAtIndex:[sender selectedSegmentIndex]];
}


-(IBAction)tapSearch:(id)sender{
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    return YES;
}

#pragma mark - Table view data source

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    cell.backgroundColor=[UIColor clearColor];

}
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
