//
//  Product.m
//  Baoyu
//
//  Created by Kaven Feng on 3/2/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "Product.h"
#import "AFAppSharedAPIClient.h"
#import "User.h"

@implementation Product

- (instancetype)initWithAttributes:(NSDictionary *)attributes {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.pID = [attributes valueForKeyPath:@"_id"];
    self.title = [attributes valueForKeyPath:@"title"];
    self.shortDescription = [attributes valueForKeyPath:@"description"];
    self.longDescription = [attributes valueForKeyPath:@"longDescription"];
    self.material = [attributes valueForKeyPath:@"material"];
    self.price = [[attributes valueForKeyPath:@"price"] floatValue];
    self.priceInMarket = [[attributes valueForKeyPath:@"priceInMarket"] floatValue];
    self.weight = [[attributes valueForKeyPath:@"weight"] floatValue];

   // self.user = [[User alloc] initWithAttributes:[attributes valueForKeyPath:@"user"]];
    
    return self;
}

+ (NSURLSessionDataTask *)getAllProductsWithBlock:(void (^)(NSArray *posts, NSError *error))block {
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
        
     /*
        NSArray *postsFromResponse = [JSON valueForKeyPath:@"data"];
        NSMutableArray *mutablePosts = [NSMutableArray arrayWithCapacity:[postsFromResponse count]];
        for (NSDictionary *attributes in postsFromResponse) {
            
//            Post *post = [[Post alloc] initWithAttributes:attributes];
//            [mutablePosts addObject:post];
            
        }
        
        if (block) {
            block([NSArray arrayWithArray:mutablePosts], nil);
        }
      */
        
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block([NSArray array], error);
        }
    }];
}

@end
