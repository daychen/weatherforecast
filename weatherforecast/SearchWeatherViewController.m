//
//  SearchWeatherViewController.m
//  weatherforecast
//
//  Created by YA CHEN on 19/11/15.
//  Copyright (c) 2015 YA CHEN. All rights reserved.
//

#import "SearchWeatherViewController.h"

@interface SearchWeatherViewController ()

@property (strong, nonatomic) IBOutlet UITableView *searchTable;

@property (strong, nonatomic) NSArray *searchItems;

@end

@implementation SearchWeatherViewController


#pragma mark - initializer

-(UITableView *)searchTable{
    if (!_searchTable) {
        _searchTable=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    }
    
    return _searchTable;
}


-(void)initSearchTable{

    
    //data
    NSArray *data=[NSArray arrayWithObjects:@"Street",@"City",@"State",@"Degree", nil];
    self.searchItems=data;
    
    //view
    
    self.searchTable.backgroundColor=[UIColor blackColor];
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initSearchTable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - TableView delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [self.searchItems count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellIdentifier=@"searchcell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    if (cell== nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text=[self.searchItems objectAtIndex:[indexPath row]];

    
    if ([indexPath row]==0) {
        [self createTextFieldInCell:cell];
    
    }
    
    else if ([indexPath row]==1) {
        UILabel  *searchField=(UILabel *)[cell viewWithTag:8];
        searchField.text=  @"check";
    }
      return cell;

}


-(UITextField *)createTextFieldInCell:(UITableViewCell *)cell{
    
    UITextField *tfd=[[UITextField alloc]init];
    tfd.tag=3;
    tfd.translatesAutoresizingMaskIntoConstraints=NO;
    tfd.backgroundColor=[UIColor clearColor];
    tfd.textColor=[UIColor grayColor];
    [cell.contentView addSubview:tfd];
    NSLog(@"check cell tag %@",[cell viewWithTag:3]);
    
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:tfd attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:cell.textLabel attribute:NSLayoutAttributeTrailing multiplier:1 constant:8]];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:tfd attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:cell.contentView attribute:NSLayoutAttributeTop
                                                    multiplier:1 constant:8]];
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:tfd attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:cell.contentView attribute:NSLayoutAttributeBottom multiplier:1 constant:-8]];
    
    [cell addConstraint:[NSLayoutConstraint constraintWithItem:tfd attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:cell.contentView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0]];
    
    tfd.textAlignment=NSTextAlignmentRight;
    
    
    
    return tfd;
}


-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    cell.backgroundColor=[UIColor clearColor];
    cell.textLabel.textColor=[UIColor grayColor];
}

@end
