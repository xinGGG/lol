//
//  ViewController.m
//  lol
//
//  Created by mac on 15/4/4.
//  Copyright (c) 2015年 xing. All rights reserved.
//

#import "ViewController.h"
#import "JXhero.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *_dataHeroArray;
    //NSArray *heroArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //数据初始化
    _dataHeroArray = [NSMutableArray array];
    //路径
    NSString *fullPath = [[NSBundle mainBundle] pathForResource:@"heros" ofType:@"plist"];
    //字典数组 加载路径
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:fullPath];
    //数组转模型
    NSMutableArray *models = [NSMutableArray arrayWithCapacity:dicArray.count];
    for (NSDictionary *dic in dicArray) {
        JXhero *hero  = [JXhero heroWithDic:dic];
        [models addObject:hero];
    }
    _dataHeroArray = [models copy];
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataHeroArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"hero";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier:ID];
        NSLog(@"新创建");
    }
    NSLog(@"缓存cell");
    JXhero *hero = _dataHeroArray[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:hero.icon];
    cell.textLabel.text = hero.name;
    cell.detailTextLabel.text = hero.intro;
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) 

@end
