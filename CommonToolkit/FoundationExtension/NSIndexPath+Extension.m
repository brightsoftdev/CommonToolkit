//
//  NSIndexPath+Extension.m
//  CommonToolkit
//
//  Created by  on 12-6-14.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import "NSIndexPath+Extension.h"

@implementation NSIndexPath (UITableViewCompare)

- (BOOL)isEqualToIndexPath:(NSIndexPath *)pIndexPath{
    BOOL _ret = NO;
    
    if (self.section == pIndexPath.section && self.row == pIndexPath.row) {
        _ret = YES;
    }
    
    return _ret;
}

@end
