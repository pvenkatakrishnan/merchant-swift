# merchant-swift

## Direct Integration

###Files to note:

* [Info.plist](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/Info.plist#L44-L58): To add the deep linking params. Ch
* [PYPLCheckoutBridge.h](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/PYPLCheckoutBridge.h): To bridge between the objective C library and swift project
* `DirectViewController.swift`: To add a button listener and invoke SDK to open PYPL in SFVC with right state
* `AppDelegate.swift`: To handle the deep link call back on merchant side and pass it to Paypal SDK to cleanup the SFVC it opened up.

## Webview Integration

###Files to note:

* `Info.plist`: To add the deep linking params
* `PYPLCheckoutBridge.h`: To bridge between the objective C library and swift project
* `WebViewController.swift`: To setup SDK to listen in on the Webview, so that it can intercept in case of PYPL checkout URL
* `AppDelegate.swift`: To handle the deep link call back on the merchant side and pass it to Paypal SDK to cleanup the SFVC it opened up.
