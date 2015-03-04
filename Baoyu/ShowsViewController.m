//
//  ShowsViewController.m
//  Baoyu
//
//  Created by Kaven Feng on 3/2/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "ShowsViewController.h"

@interface ShowsViewController ()
@property (nonatomic, strong) IBOutlet UISegmentedControl *segmentedControl;
@property (strong, nonatomic) IBOutlet UIView *knowledgeView;
@property (strong, nonatomic) IBOutlet UIView *customersShowView;
@property (strong, nonatomic) IBOutlet UIView *soldView;

@end

@implementation ShowsViewController

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
- (IBAction)onSegmentChanged:(id)sender {
    //[self.soldCollectionView reloadData];
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        self.knowledgeView.hidden = NO;
        self.customersShowView.hidden = YES;
        self.soldView.hidden = YES;
    }else if (self.segmentedControl.selectedSegmentIndex == 1){
        self.customersShowView.hidden = NO;
        self.knowledgeView.hidden = YES;
        self.soldView.hidden = YES;
    }else if(self.segmentedControl.selectedSegmentIndex == 2){
        self.soldView.hidden = NO;
        self.knowledgeView.hidden = YES;
        self.customersShowView.hidden = YES;
    }
}

/*
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* KnowlegeCell = @"KnowlegeCell";
    static NSString* CustomerShowCell = @"CustomerShowCell";
    static NSString* SoldCell = @"SoldCell";

    NSString* MyCellID = KnowlegeCell;
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        MyCellID = KnowlegeCell;
    }else if(self.segmentedControl.selectedSegmentIndex == 1){
        MyCellID = CustomerShowCell;
    }else if(self.segmentedControl.selectedSegmentIndex == 2){
        MyCellID = SoldCell;
    }
    UICollectionViewCell* newCell = [collectionView dequeueReusableCellWithReuseIdentifier:MyCellID forIndexPath:indexPath];
    return newCell;
    
}
*/
@end
