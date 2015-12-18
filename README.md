# UITableView-Placeholder
UITableView数据为空的时候，给出一个简单的提示，还可以添加一个图标
![image](https://github.com/wzf/UITableView-Placeholder/raw/master/ScreenShot/ScreenShot0.png)

## Pod导入
pod 'UITableView+Placeholder'

## 补充说明
在这一方面，已经有大神级的组件，可跳转至https://github.com/dzenbot/DZNEmptyDataSet

## 使用（Usage）
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
        {
            NSInteger count = 0; //依据业务逻辑，改成对应的值
            [tableView placeholderBaseOnNumber:count iconConfig:^(UIImageView *imageView) {
                // 传入一个想展示的图标
                imageView.image = [UIImage imageNamed:@"emptyTableView"];
            } textConfig:^(UILabel *label) {
                // 设置提示性文字
                label.text      = @"暂时没有数据";
                label.textColor = [UIColor lightGrayColor];
                label.font      = [UIFont systemFontOfSize:15];
            }];
            return count;
        }
