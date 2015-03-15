

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"

@interface AFAppSharedAPIClient : AFHTTPSessionManager

+ (instancetype)sharedClient;

@end
