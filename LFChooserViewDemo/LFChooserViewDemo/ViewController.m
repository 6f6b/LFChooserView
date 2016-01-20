//
//  ViewController.m
//  LFChooserViewDemo
//
//  Created by LiuFeng on 16/1/20.
//  Copyright © 2016年 LiuFeng. All rights reserved.
//

#import "ViewController.h"
#import "LFChooserView.h"


@interface ViewController ()<LFChooserViewDelegate>
@property (nonatomic,copy) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[@[@"北京1",@"成都2",@"上海3",@"天津4",@"杭州5"],@[@"纽约1",@"洛杉矶2",@"芝加哥3",@"华盛顿4",@"迈阿密5"],@[@"伦敦1",@"曼彻斯特2"]];
    
    NSArray *buttonTitles = @[@"中国",@"美国",@"英国"];
    
    NSArray *cellTitles = @[@[@"北京",@"成都",@"上海",@"天津",@"杭州"],@[@"纽约",@"洛杉矶",@"芝加哥",@"华盛顿",@"迈阿密"],@[@"伦敦",@"曼彻斯特"]];
    
    LFChooserView *chooserView = [LFChooserView shareChooserViewWith:100];
    [chooserView setTitlesOfButtonWith:buttonTitles];
    
    [chooserView setCellTitlesWith:cellTitles];
    chooserView.delegate = self;
    [self.view addSubview:chooserView];
}

- (void)chooserViewDidSelectColumnAtIndex:(NSInteger)index RowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray *arr = self.dataArray[index];
    NSLog(@"%@",arr[indexPath.row]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
