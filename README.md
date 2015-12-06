AFMobilePayRequestHandler
=======================

![Pod version](http://img.shields.io/cocoapods/v/AFMobilePayRequestHandler.svg?style=flat)
![Pod platform](http://img.shields.io/cocoapods/p/AFMobilePayRequestHandler.svg?style=flat)

Send and request money via [Danske Banks MobilePay app](http://www.danskebank.dk/da-dk/privat/selvbetjening/produkter/pages/mobilepay.aspx)

[App Store link](https://itunes.apple.com/dk/app/mobilepay-by-danske-bank/id624499138?at=10lHcz)

## Methods

Check if MobilePay is installed on device.

```swift
AFMobilePayRequestHandler.isMobilePayInstalled
```

Send payment with amount and phone number.

```swift
public class func sendPayment(amount: Double, withPhoneNumber phoneNumber: String)
```

Request payment with amount and phone number.

```swift
public class func requestPayment(amount: Double, withPhoneNumber phoneNumber: String)
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
