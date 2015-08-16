AFMobilePayRequestHandler
=======================

![Pod version](http://img.shields.io/cocoapods/v/AFMobilePayRequestHandler.svg?style=flat)
![Pod platform](http://img.shields.io/cocoapods/p/AFMobilePayRequestHandler.svg?style=flat)

Send and request money via [Danske Banks MobilePay app](http://www.danskebank.dk/da-dk/privat/selvbetjening/produkter/pages/mobilepay.aspx) 

[App Store link](https://itunes.apple.com/dk/app/mobilepay-by-danske-bank/id624499138?at=10lHcz)

**The URL schemes used for this project are no longer available, therefore this project is not working anymore!** 


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

## Apps using this class

- [Owe](https://itunes.apple.com/dk/app/owe/id819490019?mt=8&at=10lHcz)


## Other iOS open source projects by me

- [AFAddressBookManager](https://github.com/Fogh/AFAddressBookManager)
- [AFWebViewController](https://github.com/Fogh/AFWebViewController)


---

<a href="http://Fogh.tip.me">
  <img
    alt="Tip Me With ChangeTip"
    src="https://cdn.changetip.com/img/logos/tipme_square.png?1"/>
</a>
