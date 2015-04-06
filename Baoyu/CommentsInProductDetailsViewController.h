//
//  CommentsInProductDetailsViewController.h
//  Baoyu
//
//  Created by Kaven Feng on 3/5/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CellInComments : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *userAvata;
@property (strong, nonatomic) IBOutlet UILabel* userName;
@property (strong, nonatomic) IBOutlet UILabel* comment;
@property (strong, nonatomic) IBOutlet UILabel* date;
@end


@class Product;

@interface CommentsInProductDetailsViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) Product* product;

@end
