//
//  CompositeProductViewController.h
//  Baoyu
//
//  Created by Kaven Feng on 3/5/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellInSuitProductCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *thumbnail1;
@property (strong, nonatomic) IBOutlet UIImageView *thumbnail2;
@property (strong, nonatomic) IBOutlet UIImageView *thumbnail3;
@property (strong, nonatomic) IBOutlet UILabel *shortDescription;
@property (strong, nonatomic) IBOutlet UIButton *showDetails;

@end


@interface SuitProductViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>


@end
