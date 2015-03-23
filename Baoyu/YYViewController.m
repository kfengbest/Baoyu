//
//  YYViewController.m
//  Baoyu
//
//  Created by Kaven Feng on 3/2/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "YYViewController.h"
#import "Product.h"
#import "UIAlertView+AFNetworking.h"
#import <ShareSDK/ShareSDK.h>


@interface YYViewController ()
@property (nonatomic, strong) IBOutlet UISegmentedControl *segmentedControl;
@property (strong, nonatomic) IBOutlet UIView *compositeProductView;
@property (strong, nonatomic) IBOutlet UIView *singleProductView;
@end



@implementation YYViewController

- (IBAction)onSharing:(id)sender {
    
    
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"more" ofType:@"png"];
    
    //构造分享内容
    id<ISSContent> publishContent = [ShareSDK content:@"分享内容"
                                       defaultContent:@"测试一下"
                                                image:[ShareSDK imageWithPath:imagePath]
                                                title:@"ShareSDK"
                                                  url:@"http://www.mob.com"
                                          description:@"这是一条测试信息"
                                            mediaType:SSPublishContentMediaTypeNews];
    //创建弹出菜单容器
    id<ISSContainer> container = [ShareSDK container];
   // [container setIPadContainerWithView:sender arrowDirect:UIPopoverArrowDirectionUp];
    
    //弹出分享菜单
    [ShareSDK showShareActionSheet:container
                         shareList:nil
                           content:publishContent
                     statusBarTips:YES
                       authOptions:nil
                      shareOptions:nil
                            result:^(ShareType type, SSResponseState state, id<ISSPlatformShareInfo> statusInfo, id<ICMErrorInfo> error, BOOL end) {
                                
                                if (state == SSResponseStateSuccess)
                                {
                                    NSLog(NSLocalizedString(@"TEXT_ShARE_SUC", @"分享成功"));
                                }
                                else if (state == SSResponseStateFail)
                                {
                                    NSLog(NSLocalizedString(@"TEXT_ShARE_FAI", @"分享失败,错误码:%d,错误描述:%@"), [error errorCode], [error errorDescription]);
                                }
                            }];
     
     
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

/*
    NSURLSessionTask *task = [Product getAllProductsWithBlock:^(NSArray *posts, NSError *error) {
        if (!error) {
         //   self.posts = posts;
         //   [self.tableView reloadData];
        }
    }];
  
*/ 
 
//    [UIAlertView showAlertViewForTaskWithErrorOnCompletion:task delegate:nil];
//    [self.refreshControl setRefreshingWithStateOfTask:task];
    
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
- (IBAction)onSegmentedChanged:(id)sender {
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        self.compositeProductView.hidden = NO;
        self.singleProductView.hidden = YES;
    }else if(self.segmentedControl.selectedSegmentIndex == 1){
        self.singleProductView.hidden = NO;
        self.compositeProductView.hidden = YES;
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
    static NSString* SingleCellID = @"SimpleCell";
    static NSString* CompositeCellID = @"CompositeCell";
    
    NSString* MyCellID = CompositeCellID;
    if (self.segmentedControl.selectedSegmentIndex == 1) {
        MyCellID =  SingleCellID;
    }
    UICollectionViewCell* newCell = [collectionView dequeueReusableCellWithReuseIdentifier:MyCellID forIndexPath:indexPath];
    return newCell;

}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        return CGSizeMake(300, 250);
    }else if(self.segmentedControl.selectedSegmentIndex == 1){
        return CGSizeMake(130, 180);
    }
        
    return CGSizeMake(100, 100);
}
*/

@end
