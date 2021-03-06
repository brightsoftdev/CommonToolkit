//
//  UIViewExtensionBean.m
//  CommonToolkit
//
//  Created by  on 12-6-7.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import "UIViewExtensionBean.h"

#import "UIViewExtensionBean_Extension.h"

@implementation UIViewExtensionBean

@synthesize title = _title;
@synthesize titleView = _titleView;
@synthesize leftBarButtonItem = _leftBarButtonItem;
@synthesize rightBarButtonItem = _rightBarButtonItem;

@synthesize viewControllerRef = _viewControllerRef;

@synthesize extensionDic = _extensionDic;

- (id)init{
    self = [super init];
    if (self) {
        // init UIViewExtensionBean extension dictionary
        _extensionDic = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"UIViewExtensionBean description: title = %@, title view = %@, left bar button item = %@, right bar button item = %@ and view controller reference = %@, extension dictionary = %@", _title, _titleView, _leftBarButtonItem, _rightBarButtonItem, _viewControllerRef, _extensionDic];
}

@end
