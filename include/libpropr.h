#import <Foundation/Foundation.h>

@interface libpropr : NSObject

@property (class, nonatomic, readonly) libpropr *shared;
@property (nonatomic) NSUserDefaults *defaults;

+ (void)setupWithDomain:(NSString *)domain;
+ (BOOL)boolForKey:(NSString *)key;
+ (int)intForKey:(NSString *)key;

@end