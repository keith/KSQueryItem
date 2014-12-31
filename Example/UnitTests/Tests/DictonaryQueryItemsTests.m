#import "NSDictionary+KSQueryItem.h"

@interface DictionaryQueryItems : XCTestCase

@end

@implementation DictionaryQueryItems

- (void)testReturnAnArrayOfQueryItems
{
    NSDictionary *dictionary = @{@"foo": @"bar"};
    NSArray *items = [dictionary ks_queryItems];
    XCTAssertEqual(items.count, (unsigned long)1);
    NSURLQueryItem *item = [NSURLQueryItem queryItemWithName:@"foo"
                                                       value:@"bar"];
    XCTAssertTrue([items containsObject:item]);
}

- (void)testReturnsMultipleQueryItems
{
    NSDictionary *dictionary = @{@"foo": @"bar", @"baz": @"qux"};
    NSArray *items = [dictionary ks_queryItems];
    XCTAssertEqual(items.count, (unsigned long)2);
    NSURLQueryItem *item = [NSURLQueryItem queryItemWithName:@"foo"
                                                       value:@"bar"];
    NSURLQueryItem *item2 = [NSURLQueryItem queryItemWithName:@"baz"
                                                        value:@"qux"];
    XCTAssertTrue([items containsObject:item]);
    XCTAssertTrue([items containsObject:item2]);
}

- (void)testIgnoresInvalidTypes
{
    NSDictionary *dictionary = @{@"foo": @1, @[]: @"bar", @"baz": @"qux"};
    NSArray *items = [dictionary ks_queryItems];
    XCTAssertEqual(items.count, (unsigned long)1);
    NSURLQueryItem *item = [NSURLQueryItem queryItemWithName:@"baz"
                                                       value:@"qux"];
    XCTAssertTrue([items containsObject:item]);
}

- (void)testAnEmptyDictionary
{
    NSDictionary *dictionary = @{};
    NSArray *items = [dictionary ks_queryItems];
    XCTAssertEqual(items.count, (unsigned long)0);
}

@end
