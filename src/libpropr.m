#import "../include/libpropr.h"

@implementation libpropr
+ (instancetype)shared {
    static libpropr *singleton;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        singleton = [[self alloc] init];
    });
    return singleton;
}

+ (void)setupWithDomain:(NSString *)domain {
    self.shared.defaults = [[NSUserDefaults alloc] initWithSuiteName:domain];
}

+ (BOOL)boolForKey:(NSString *)key {
    id value = [self.shared.defaults objectForKey:key];
    return (value != nil) ? [value boolValue] : NO;
}

+ (int)intForKey:(NSString *)key {
    id value = [self.shared.defaults objectForKey:key];
    return (value != nil) ? [value intValue] : 0;
}
@end