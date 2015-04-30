//
//  AFMobilePayRequestHandler.h
//
//  Created by Anders Fogh Eriksen on 17/10/13.
//  Copyright (c) 2013-2015 Anders Fogh Eriksen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFMobilePayRequestHandler : NSObject

/**
 *  Check if MobilePay is installed on device.
 *
 *  @return `YES` if MobilePay is installed.
 */
+ (BOOL)isMobilePayInstalled;

/**
 *  Send payment with amount to phone number.
 *
 *  @param amount Amount to send.
 *  @param number Phone number to receive money.
 */
+ (void)sendPayment:(double)amount withPhoneNumber:(NSString *)number;

/**
 *  Send payment request with amount to phone number.
 *
 *  @param amount Amount to request.
 *  @param number Phone number to request money from.
 */
+ (void)requestPayment:(double)amount withPhoneNumber:(NSString *)number;

@end
