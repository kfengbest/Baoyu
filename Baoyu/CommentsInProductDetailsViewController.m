//
//  CommentsInProductDetailsViewController.m
//  Baoyu
//
//  Created by Kaven Feng on 3/5/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "CommentsInProductDetailsViewController.h"
#import "Comment.h"
#import "Product.h"

@implementation CellInComments
@end


@interface CommentsInProductDetailsViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CommentsInProductDetailsViewController

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
    return [self.product.comments count];
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* MyCellID = @"CellInComments";
    CellInComments* newCell = [collectionView dequeueReusableCellWithReuseIdentifier:MyCellID forIndexPath:indexPath];
    
    Comment* comment = self.product.comments[indexPath.row];
    newCell.userAvata.image = [UIImage imageNamed:comment.userAvataUrl];
    newCell.userName.text = comment.userName;
    newCell.comment.text = comment.content;
    newCell.date.text = comment.date;
    
    return newCell;
    
}

@end
