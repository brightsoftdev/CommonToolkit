//
//  NSString+Extension.m
//  CommonToolkit
//
//  Created by  on 12-6-7.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import "NSString+Extension.h"

#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Common)

- (NSString *)trimWhitespaceAndNewline{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)trimPhoneNumberSeparator{
    NSMutableString *_ret = [[NSMutableString alloc] init];
    
    NSArray *_separatedArray = [self componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"()- "]];
    
    for(NSString *_string in _separatedArray){
        [_ret appendString:_string];
    }
    
    return _ret;
}

- (NSArray *)stringParagraphs{
    // string paragraphs array
    NSArray *_paragraphsArray = [self componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n"]];
    //NSLog(@"string = %@, paragraphs array = %@ and count = %d", self, _paragraphsArray, [_paragraphsArray count]);
    
    return _paragraphsArray;
}

- (CGFloat)stringPixelLengthByFontSize:(CGFloat)pFontSize andIsBold:(BOOL)pBold{
    return [self sizeWithFont:pBold ? [UIFont boldSystemFontOfSize:pFontSize] : [UIFont systemFontOfSize:pFontSize]].width;
}

- (CGFloat)stringPixelHeightByFontSize:(CGFloat)pFontSize andIsBold:(BOOL)pBold{
    return [self sizeWithFont:pBold ? [UIFont boldSystemFontOfSize:pFontSize] : [UIFont systemFontOfSize:pFontSize]].height;
}

- (NSString *)md5{
    const char *cCharUTF8String = [self UTF8String];
    unsigned char _result[16];
    
    CC_MD5(cCharUTF8String, strlen(cCharUTF8String), _result);
    
    NSString *_ret = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", _result[0], _result[1], _result[2], _result[3], _result[4], _result[5], _result[6], _result[7], _result[8], _result[9], _result[10], _result[11], _result[12], _result[13], _result[14], _result[15]];
    
    //NSLog(@"string md5: orig string: %@ and after md5 = %@", _ret, [_ret uppercaseString]);
    
    return [_ret uppercaseString];
}

- (BOOL)isNil{
    BOOL _ret = NO;
    
    if (!self || [[self trimWhitespaceAndNewline] isEqualToString:@""]) {
        _ret = YES;
    }
    
    return _ret;
}

- (NSString *)perfectHttpRequestUrl{
    NSString *_ret;
    
    // check url is nil and has prefix "http://" or "https://"
    if (![self isNil] && ![self hasPrefix:@"http://"] && ![self hasPrefix:@"https://"]) {
        _ret = [NSString stringWithFormat:@"http://%@", self];
    } else {
        _ret = self;
    }
    
    return _ret;
}

@end
