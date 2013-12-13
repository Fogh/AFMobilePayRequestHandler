//
//  AFMobilePayRequestHandler.h
//
//  Created by Anders Fogh Eriksen on 17/10/13.
//  Copyright (c) 2013 Anders Fogh Eriksen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFMobilePayRequestHandler : NSObject

+ (BOOL)isMobilePayInstalled;
+ (void)sendPayment:(double)amount withPhoneNumber:(NSString *)number;
+ (void)requestPayment:(double)amount withPhoneNumber:(NSString *)number;

@end
