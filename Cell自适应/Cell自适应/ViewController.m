//
//  ViewController.m
//  Cell自适应
//
//  Created by sks on 16/7/15.
//  Copyright © 2016年 sks. All rights reserved.
//

#import "ViewController.h"
#import "Category.h"
#import "UIView+YZTCView.h"
#define Width [UIScreen mainScreen].bounds.size.width
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *myTableVew;
@property(nonatomic,strong)NSArray *array;

@end

@implementation ViewController
-(UITableView *)myTableVew{
    if (_myTableVew == nil) {
        _myTableVew = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
                    
        _myTableVew.delegate = self;
        _myTableVew.dataSource = self;
        
        [self.view addSubview:_myTableVew];
                    }
    
                    
        return _myTableVew;
                    }
- (NSArray *)array
{
    if (_array == nil) {
        _array = @[@"爱丽丝的咖啡机",
                   @"塑料袋开发市领导看附件是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥",
                   @"领导看附件是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐领导看附件是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐大姐夫谁离开的减肥是快乐"] ;
    }
    return _array ;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     self.myTableVew.backgroundColor = [UIColor orangeColor] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return self.array.count ;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self tableView:tableView cellForRowAtIndexPath:indexPath] ;
    return cell.yzHeight ;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellInderifer = @"NewsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellInderifer];
    if (!cell ) {
        cell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier:cellInderifer];
        
    }
    for (UIView *subView in cell.contentView.subviews) {
        [subView removeFromSuperview];
    }
    [cell.contentView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
     cell.textLabel.text = self.array[indexPath.row] ;
    UILabel *mylabel = [[UILabel alloc]initWithFrame:CGRectZero];
    [mylabel autolayoutContent:self.array[indexPath.row]
                        origin:CGPointMake(10, 10)
                     FontFloat:12
                  contentWidth:(Width-20)];
    [cell.contentView addSubview:mylabel];
    
    cell.yzHeight = mylabel.yzBottom + 10 ;
    return cell;
    
}


@end
