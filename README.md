AFMobilePayRequestHandler
=======================

![Pod version](https://cocoapod-badges.herokuapp.com/v/AFMobilePayRequestHandler/badge.png)
![Pod platform](https://cocoapod-badges.herokuapp.com/p/AFMobilePayRequestHandler/badge.png)

Send and request money via [Danske Banks MobilePay app](http://www.danskebank.dk/da-dk/privat/selvbetjening/produkter/pages/mobilepay.aspx) 

[AppStore link](https://itunes.apple.com/dk/app/mobilepay-by-danske-bank/id624499138)

This class makes use of MobilePays URL schemes.

Requires iOS 5+ since that is what MobilePay requires.

__NB! Danske Bank has said that they don't official support the URL schemes yet.__


## Methods

Check if MobilePay is installed on device.

```objectivec
+ (BOOL)isMobilePayInstalled;
```

Send payment with amount and phone number.

```objectivec
+ (void)sendPayment:(double)amount withPhoneNumber:(NSString *)number;
```

Request payment with amount and phone number.

```objectivec
+ (void)requestPayment:(double)amount withPhoneNumber:(NSString *)number;
```
