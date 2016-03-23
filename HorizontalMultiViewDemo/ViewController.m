//
//  ViewController.m
//  HorizontalMultiViewDemo
//
//  Created by james on 16/3/23.
//  Copyright © 2016年 kfvnx. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"CustomTableViewCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell" forIndexPath:indexPath];
    
    if (indexPath.row == 0) {
        [cell setTitle:@"最佳实践和先进技术" saveMoney:@"减92.0"];
    }else if (indexPath.row == 1) {
        [cell setTitle:@"社区带来最佳实践和先进技术" saveMoney:@"减392.0"];
    }else {
        [cell setTitle:@"为中国 Objective-C 社区带来最佳实践和先进技术" saveMoney:@"减10932.0"];
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 88;
}
@end
