//
//  AFMobilePayRequestHandler.swift
//  
//
//  Created by Anders Eriksen on 06/12/2015.
//  Copyright (c) 2016 Anders Fogh Eriksen. All rights reserved.
//

import Foundation
import UIKit

public class AFMobilePayRequestHandler {
    private static let kURL = "mobilepay://"
    
    /// Boolean indicating if the MobilePay app is installed on current device.
    public class var isMobilePayInstalled: Bool {
        return UIApplication.sharedApplication().canOpenURL(NSURL(string: kURL)!)
    }
    
    /**
     Send payment with amount to phone number.
     
     - parameter amount:      Amount to send.
     - parameter phoneNumber: Phone number to send payment to.
     */
    public class func sendPayment(amount: Double, withPhoneNumber phoneNumber: String) {
        if self.isMobilePayInstalled {
            let parameterString = String(format: "send?amount=%.2f&phone=%@", arguments: [amount, phoneNumber])
            UIApplication.sharedApplication().openURL(self.mobilePayURLWithParameters(parameterString))
        } else {
            print("MobilePay is not installed on device!")
        }
    }
    
    /**
     Send payment request with amount to phone number.
     
     - parameter amount:      Amount to request.
     - parameter phoneNumber: Phone number to request payment from.
     */
    public class func requestPayment(amount: Double, withPhoneNumber phoneNumber: String) {
        if self.isMobilePayInstalled {
            let parameterString = String(format: "request?amount=%.2f&phone=%@", arguments: [amount, phoneNumber])
            UIApplication.sharedApplication().openURL(self.mobilePayURLWithParameters(parameterString))
        } else {
            print("MobilePay is not installed on device!")
        }
    }
    
    private class func mobilePayURLWithParameters(parametersString: String) -> NSURL {
        let urlString = "\(kURL)\(parametersString)"
        return NSURL(string: urlString)!
    }
}