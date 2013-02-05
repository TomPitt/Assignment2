//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Vegetable.h"
#import "Onion.h"
#import "Potato.h"
#import "Pumpkin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    Potato * anonPotato = [[Potato alloc] init];
    Pumpkin * anonPumpkin = [[Pumpkin alloc] init];
    Onion * anonOnion = [[Onion alloc] init];
        
    [_cart addObject:anonPotato];
    [_cart addObject:anonPumpkin];
    [_cart addObject:anonOnion];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Fruit";
}

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cart count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    Vegetable * tempVegetable = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempVegetable name];
    cell.detailTextLabel.text = [tempVegetable color];
    return cell;
}

@end
