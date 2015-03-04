//
//  CustomersShowViewController.m
//  Baoyu
//
//  Created by Kaven Feng on 3/4/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "CustomersShowViewController.h"

@interface CustomersShowViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CustomersShowViewController

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
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* MyCellID = @"CustomersShowCell";
    
    UICollectionViewCell* newCell = [collectionView dequeueReusableCellWithReuseIdentifier:MyCellID forIndexPath:indexPath];
    return newCell;
    
}

@end
