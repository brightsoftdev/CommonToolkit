//
//  NSString+Extension.h
//  CommonToolkit
//
//  Created by  on 12-6-7.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Common)

// trim whitespace and new line character
- (NSString *)trimWhitespaceAndNewline;

// trim phone number separator character
- (NSString *)trimPhoneNumberSeparator;

// get paragraphs array of the string, according to '\n'
- (NSArray *)stringParagraphs;

// get string pixel length with string font size and it is bold
- (CGFloat)stringPixelLengthByFontSize:(CGFloat)pFontSize andIsBold:(BOOL) pBold;

// get string pixel height with string font size and it is bold
- (CGFloat)stringPixelHeightByFontSize:(CGFloat)pFontSize andIsBold:(BOOL) pBold;

// string md5
- (NSString *)md5;

// is nil
- (BOOL)isNil;

// perfect http request url
- (NSString *)perfectHttpRequestUrl;

@end
