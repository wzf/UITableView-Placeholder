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
    
    [FETablePlaceholderConf defaultConf].animImages = @[[UIImage imageNamed:@"load_anim_1.png"],
                                                        [UIImage imageNamed:@"load_anim_2.png"],
                                                        [UIImage imageNamed:@"load_anim_3.png"],];
    
    [FETablePlaceholderConf defaultConf].placeholderImage = [UIImage imageNamed:@"result_no_data.png"];
    [FETablePlaceholderConf defaultConf].placeholderText  = @"未找到匹配项";
    [FETablePlaceholderConf defaultConf].animDuration     = 1.0;

    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    [FETablePlaceholderConf defaultConf].loadingData = YES;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [FETablePlaceholderConf defaultConf].loadingData = NO;
        [tableView reloadData];
    });

}

#pragma mark -
#pragma mark UITableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    NSInteger count = 0;
//    [tableView placeholderBaseOnNumber:count iconConfig:^(UIImageView *imageView) {
//        imageView.image = [UIImage imageNamed:@"emptyTableView"];
//    } textConfig:^(UILabel *label) {
//        label.text = @"暂时没有数据";
//        label.textColor = [UIColor lightGrayColor];
//        label.font = [UIFont systemFontOfSize:15];
//    }];
    
    [tableView placeholderBaseOnNumber:count withConf:[FETablePlaceholderConf defaultConf]];
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
