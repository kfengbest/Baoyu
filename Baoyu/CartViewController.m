//
//  CartViewController.m
//  Baoyu
//
//  Created by Kaven Feng on 3/2/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "CartViewController.h"

@interface CartViewController ()

@end

@implementation CartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 2;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* MyCellID = @"CartCell";
    UICollectionViewCell* newCell = [collectionView dequeueReusableCellWithReuseIdentifier:MyCellID forIndexPath:indexPath];
    return newCell;
    
}

@end
