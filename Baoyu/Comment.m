//
//  Comment.m
//  Baoyu
//
//  Created by Kaven Feng on 3/15/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import "Comment.h"

@implementation Comment

- (instancetype)initWithAttributes:(NSDictionary *)attributes {
    self = [super init];
    if (!self) {
        return nil;
    }
    
//    self.userID = (NSUInteger)[[attributes valueForKeyPath:@"id"] integerValue];
//    self.username = [attributes valueForKeyPath:@"username"];
//    self.avatarImageURLString = [attributes valueForKeyPath:@"avatar_image.url"];
    
    return self;
}

@end
