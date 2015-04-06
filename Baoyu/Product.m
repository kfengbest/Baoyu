//
//  Product.m
//  Baoyu
//
//  Created by Kaven Feng on 3/2/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "Product.h"
#import "AFAppSharedAPIClient.h"
#import "Comment.h"
#import "Vote.h"
#import "Favorite.h"

@implementation Product

- (instancetype)initWithAttributes:(NSDictionary *)attributes {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.pID = [attributes valueForKeyPath:@"_id"];
    self.sku = [attributes valueForKeyPath:@"sku"];
    self.title = [attributes valueForKeyPath:@"title"];
    self.shortDescription = [attributes valueForKeyPath:@"description"];
    self.longDescription = [attributes valueForKeyPath:@"longDescription"];
    self.thumbnail = [attributes valueForKeyPath:@"thumbnail"];
    self.origin = [attributes valueForKeyPath:@"origin"];

    self.state = [attributes valueForKeyPath:@"state"];
    self.categories = [attributes valueForKeyPath:@"categories"];
    self.material = [attributes valueForKeyPath:@"material"];
    self.gemType = [attributes valueForKeyPath:@"gemType"];
    self.gemSize = [attributes valueForKeyPath:@"gemSize"];
    self.gemColor = [attributes valueForKeyPath:@"gemColor"];
    self.style = [attributes valueForKeyPath:@"style"];
    self.size = [attributes valueForKeyPath:@"size"];
    self.wight = [attributes valueForKeyPath:@"wight"];
    self.insetMaterial = [attributes valueForKeyPath:@"insetMaterial"];
    self.content = [attributes valueForKeyPath:@"content"];
    self.certificateID = [attributes valueForKeyPath:@"certificateID"];
    self.certificateImage = [attributes valueForKeyPath:@"certificateImage"];
    self.suitTypes = [attributes valueForKeyPath:@"suitTypes"];
    self.packageInfo = [attributes valueForKeyPath:@"packageInfo"];
    
    self.price = [[attributes valueForKeyPath:@"price"] floatValue];
    self.priceInMarket = [[attributes valueForKeyPath:@"priceInMarket"] floatValue];
    self.discount = [[attributes valueForKeyPath:@"discount"] floatValue];

    //self.scenarios = [[attributes valueForKey:@"scenarios"] array];
    //self.keywords = [[attributes valueForKey:@"keywords"] array];
    //self.usages = [[attributes valueForKey:@"usages"] array];
    //self.details = [[attributes valueForKey:@"detail"] array];

//    NSArray* commentsArr = [[attributes valueForKey:@"comments"] array];
//    for (NSDictionary* dic in commentsArr) {
//        Comment* obj = [[Comment alloc] initWithAttributes:dic];
//        [self.comments addObject:obj];
//    }
//    NSArray* votesArr = [[attributes valueForKey:@"votes"] array];
//    for (NSDictionary* dic in votesArr) {
//        Vote* obj = [[Vote alloc] initWithAttributes:dic];
//        [self.votes addObject:obj];
//    }
//    NSArray* favoritesArr = [[attributes valueForKey:@"favorites"] array];
//    for (NSDictionary* dic in favoritesArr) {
//        Favorite* obj = [[Favorite alloc] initWithAttributes:dic];
//        [self.favorites addObject:obj];
//    }
    
    
    return self;
}

+ (NSURLSessionDataTask *)getAllProductsWithBlock:(void (^)(NSArray *products, NSError *error))block {
    return [[AFAppSharedAPIClient sharedClient] GET:@"/products" parameters:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {

        NSLog(@"JSON: %@", JSON);
        NSArray *postsFromResponse = (NSArray*)JSON;
        NSMutableArray *mutablePros = [NSMutableArray arrayWithCapacity:[postsFromResponse count]];
        for (NSDictionary *attributes in postsFromResponse) {
            Product *pro = [[Product alloc] initWithAttributes:attributes];
            [mutablePros addObject:pro];
        }

        if (block) {
            block([NSArray arrayWithArray:mutablePros], nil);
        }
        
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block([NSArray array], error);
        }
    }];
}

@end
