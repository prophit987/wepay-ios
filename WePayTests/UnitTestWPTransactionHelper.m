//
//  UnitTestWPTransactionHelper.m
//  WePay
//
//  Created by Jianxin Gao on 8/3/16.
//  Copyright © 2016 WePay. All rights reserved.
//
#if defined(__has_include)
#if __has_include("RPx/MPOSCommunicationManager/RDeviceInfo.h") && __has_include("RUA/RUA.h")

#import <XCTest/XCTest.h>
#import "WPConfig.h"
#import "WPDipTransactionHelper.h"

@interface UnitTestWPTransactionHelper : XCTestCase

@property (nonatomic, strong) WPDipTransactionHelper *dipTransactionHelper;

@end

@interface WPDipTransactionHelper ()

- (NSString *) convertResponseCodeToHexString:(NSString *)responseCode;

@end

@implementation UnitTestWPTransactionHelper

- (void)setUp {
    [super setUp];
    self.dipTransactionHelper = [[WPDipTransactionHelper alloc] initWithConfigHelper:nil delegate:nil environment:nil];
}

- (void) testConvertResponseCodeToHexString
{
    NSString *expected = @"30313233";
    NSString *result = [self.dipTransactionHelper convertResponseCodeToHexString:@"0123"];
    
    XCTAssertEqualObjects(expected, result);
}

@end
#endif
#endif