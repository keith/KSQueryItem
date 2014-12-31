# KSQueryItem

[![Build Status](https://travis-ci.org/Keithbsmiley/KSQueryItem.svg?branch=master)](https://travis-ci.org/Keithbsmiley/KSQueryItem)

A simple `NSDictionary` category to return
[`NSURLQueryItems`][NSURLQueryItem] for use with
[`NSURLComponents`][NSURLComponents]

[NSURLQueryItem]: https://developer.apple.com/library/prerelease/ios/documentation/Foundation/Reference/NSURLQueryItem_Class/index.html
[NSURLComponents]: https://developer.apple.com/library/prerelease/ios/documentation/Foundation/Reference/NSURLComponents_class/index.html

## Usage

### With [CocoaPods](http://cocoapods.org)

```ruby
pod "KSQueryItem", "~> 1.0.0"
```

Then (in your Bridging header for swift):

```objective-c
#import <KSQueryItem/NSDictionary+KSQueryItem.h>
```
