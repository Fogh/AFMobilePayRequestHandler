//
//  AFMobilePayRequestHandler.m
//
//  Created by Anders Fogh Eriksen on 17/10/13.
//  Copyright (c) 2013 Anders Fogh Eriksen. All rights reserved.
//

#import "AFMobilePayRequestHandler.h"

@implementation AFMobilePayRequestHandler

static NSString *const kURL = @"mobilepay://";

+ (NSURL *)mobilePayURLWithParameters:(NSString *)parametersString
{
    NSString *urlString = [NSString stringWithFormat:@"%@%@", kURL, parametersString];
    return [NSURL URLWithString:urlString];
}

+ (BOOL)isMobilePayInstalled
{
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:kURL]];
}

+ (void)sendPayment:(double)amount withPhoneNumber:(NSString *)number
{
    if ([self isMobilePayInstalled]) {
        NSString *parameterString = [NSString stringWithFormat:@"send?amount=%.2f&phone=%@", amount, number];
        [[UIApplication sharedApplication] openURL:[self mobilePayURLWithParameters:parameterString]];
    }
    else {
        NSLog(@"MobilePay not installed on device!");
    }
}

+ (void)requestPayment:(double)amount withPhoneNumber:(NSString *)number
{
    if ([self isMobilePayInstalled]) {
        NSString *parameterString = [NSString stringWithFormat:@"request?amount=%.2f&phone=%@", amount, number];
        [[UIApplication sharedApplication] openURL:[self mobilePayURLWithParameters:parameterString]];
    }
    else {
        NSLog(@"MobilePay not installed on device!");
    }
}

@end
