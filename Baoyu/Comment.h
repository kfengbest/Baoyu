//
//  Comment.h
//  Baoyu
//
//  Created by Kaven Feng on 3/15/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Comment : NSObject

@property (nonatomic, strong) NSString* userAvataUrl;
@property (nonatomic, strong) NSString* userName;
@property (nonatomic, strong) NSString* content;
@property (nonatomic, strong) NSString* date;

- (instancetype)initWithAttributes:(NSDictionary *)attributes;

@end
