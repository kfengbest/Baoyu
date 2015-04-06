//
//  SingleProductViewController.m
//  Baoyu
//
//  Created by Kaven Feng on 3/5/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "SingleProductViewController.h"
#import "Product.h"

@implementation CellInSingleProduct

@end



@interface SingleProductViewController ()
@property (readwrite, nonatomic, strong) NSArray *products;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation SingleProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self reload];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) reload{

    NSURLSessionTask *task = [Product getAllProductsWithBlock:^(NSArray *products, NSError *error) {
        if (!error) {
            self.products = products;
            [self.collectionView reloadData];
        }
    }];
    
//    [UIAlertView showAlertViewForTaskWithErrorOnCompletion:task delegate:nil];
//    [self.refreshControl setRefreshingWithStateOfTask:task];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.products count];
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* MyCellID = @"CellInSingleProduct";
    CellInSingleProduct* newCell = [collectionView dequeueReusableCellWithReuseIdentifier:MyCellID forIndexPath:indexPath];
    Product* pro = self.products[indexPath.row];
    
    newCell.thumbnail.image = [UIImage imageNamed:@"product1.jpg"];
    newCell.price.text = [NSString stringWithFormat:@"￥%f",pro.price];
    newCell.shortDescription.text = pro.shortDescription;
    //newCell.createdDate.text = pro.createdDate
    
    return newCell;
    
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
