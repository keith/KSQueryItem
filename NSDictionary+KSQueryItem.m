#import "NSDictionary+KSQueryItem.h"

@implementation NSDictionary (KSQueryItem)

- (NSArray *)ks_queryItems
{
    NSMutableArray *queryItems = [NSMutableArray new];
    for (NSString *key in self.allKeys) {
        if (![key isKindOfClass:[NSString class]]) {
            continue;
        }

        NSString *value = self[key];
        if (![value isKindOfClass:[NSString class]]) {
            continue;
        }

        NSURLQueryItem *item = [NSURLQueryItem queryItemWithName:key
                                                           value:value];
        [queryItems addObject:item];
    }

    return [queryItems copy];
}

@end
