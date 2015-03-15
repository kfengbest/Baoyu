//
//  Product.h
//  Baoyu
//
//  Created by Kaven Feng on 3/2/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (nonatomic, assign) NSString* pID;
@property (nonatomic, assign) NSString* sku;
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* shortDescription;
@property (nonatomic, strong) NSString* longDescription;
@property (nonatomic, strong) NSString* thumbnail;
@property (nonatomic, strong) NSString* origin;
@property (nonatomic, strong) NSString* state;
@property (nonatomic, strong) NSString* categories;    // TODO
@property (nonatomic, strong) NSString* material;
@property (nonatomic, strong) NSString* gemType;
@property (nonatomic, strong) NSString* gemSize;
@property (nonatomic, strong) NSString* gemColor;
@property (nonatomic, strong) NSString* style;
@property (nonatomic, strong) NSString* size;
@property (nonatomic, strong) NSString* wight;
@property (nonatomic, strong) NSString* insetMaterial;
@property (nonatomic, strong) NSString* content;
@property (nonatomic, strong) NSString* certificateID;
@property (nonatomic, strong) NSString* certificateImage;  //TODO
@property (nonatomic, strong) NSString* suitTypes;  //TODO
@property (nonatomic, strong) NSString* packageInfo;  //TODO

@property (nonatomic, strong) NSArray* keywords;
@property (nonatomic, strong) NSArray* usages;
@property (nonatomic, strong) NSArray* scenarios;
@property (nonatomic, strong) NSArray* details;          //TODO

@property (nonatomic, strong) NSMutableArray* comments;
@property (nonatomic, strong) NSMutableArray* votes;
@property (nonatomic, strong) NSMutableArray* favorites;
@property (nonatomic, strong) NSMutableArray* promises;

@property (nonatomic) float   price;
@property (nonatomic) float   priceInMarket;
@property (nonatomic) float   discount;

@property (nonatomic, strong) NSDate* discountStartDate;
@property (nonatomic, strong) NSDate* discountEndDate;
@property (nonatomic, strong) NSDate* createdDate;

- (instancetype)initWithAttributes:(NSDictionary *)attributes;

+ (NSURLSessionDataTask *)getAllProductsWithBlock:(void (^)(NSArray *posts, NSError *error))block;


@end
