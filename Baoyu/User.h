//
//  User.h
//  Baoyu
//
//  Created by Kaven Feng on 3/15/15.
//  Copyright (c) 2015 Kaven Feng. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const kUserProfileImageDidLoadNotification;

@interface User : NSObject
@property (readonly, nonatomic, assign) NSUInteger userID;
@property (readonly, nonatomic, copy) NSString *username;
@property (readonly, nonatomic, unsafe_unretained) NSURL *avatarImageURL;

- (instancetype)initWithAttributes:(NSDictionary *)attributes;


@end
