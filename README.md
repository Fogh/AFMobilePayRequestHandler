AFMobilePayRequestHandler
=======================

Send and request money via [Danske Banks MobilePay app](http://www.danskebank.dk/da-dk/privat/selvbetjening/produkter/pages/mobilepay.aspx) 

[AppStore link](https://itunes.apple.com/dk/app/mobilepay-by-danske-bank/id624499138)

This class makes use of MobilePays URL schemes.

NB! The handing of the URL scheme actions can be a bit buggy. Danske Bank has said that they don't official support the URL schemes yet.


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
