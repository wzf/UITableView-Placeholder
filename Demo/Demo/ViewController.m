//
//  ViewController.m
//  Demo
//
//  Created by wangzhanfeng-PC on 15/12/18.
//  Copyright © 2015年 F.E. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+Placeholder.h"

@interface ViewController ()<UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

#pragma mark -
#pragma mark UITableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    NSInteger count = 0;
    [tableView placeholderBaseOnNumber:count iconConfig:^(UIImageView *imageView) {
        imageView.image = [UIImage imageNamed:@"emptyTableView"];
    } textConfig:^(UILabel *label) {
        label.text = @"暂时没有数据";
        label.textColor = [UIColor lightGrayColor];
        label.font = [UIFont systemFontOfSize:15];
    }];
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    //
    [cell prepareForReuse];
    
    //
    return cell;
}

#pragma mark -
#pragma mark UITableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
