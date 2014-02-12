AFMobilePayRequestHandler
=======================

Send and request money via [Danske Banks MobilePay app](http://www.danskebank.dk/da-dk/privat/selvbetjening/produkter/pages/mobilepay.aspx)

This class makes use of MobilePays URL schemes.

## NB!
The URL schemes used in this class seems to have been changed/removed in version 1.2.0 of MobilePay, which makes this class broken! I have talked to Danske Bank and they said that they are planning on implementing the URL schemes in a later version. 


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
