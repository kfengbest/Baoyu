//
//  Product.h
//  Baoyu
//
//  Created by Kaven Feng on 3/2/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;
@interface Product : NSObject

@property (nonatomic, assign) NSUInteger pID;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *shortDescription;
@property (nonatomic, strong) NSString *longDescription;
@property (nonatomic, strong) NSString *material;

@property (nonatomic) float   price;
@property (nonatomic) float   priceInMarket;
@property (nonatomic) float   weight;

@property (nonatomic, strong) User *user;

- (instancetype)initWithAttributes:(NSDictionary *)attributes;

+ (NSURLSessionDataTask *)getAllProductsWithBlock:(void (^)(NSArray *posts, NSError *error))block;


@end
