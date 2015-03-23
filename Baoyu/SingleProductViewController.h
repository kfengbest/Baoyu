//
//  SingleProductViewController.h
//  Baoyu
//
//  Created by Kaven Feng on 3/5/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellInSingleProduct : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *thumbnail;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UILabel *shortDescription;
@property (strong, nonatomic) IBOutlet UILabel *createdDate;


@end

@interface SingleProductViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@end
