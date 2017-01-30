# merchant-swift

## Direct Integration

###Files to note:

* [Info.plist](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/Info.plist#L44-L58): To add the deep linking params. 
* [PYPLCheckoutBridge.h](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/PYPLCheckoutBridge.h): To bridge between the objective C library and swift project
* [DirectViewController.swift](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/DirectViewController.swift#L41): To add a button listener and invoke SDK to open PYPL in SFVC with right state
* [AppDelegate.swift](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/AppDelegate.swift#L44-L51): To handle the deep link call back on merchant side and pass it to Paypal SDK to cleanup the SFVC it opened up.

## Webview Integration

###Files to note:

* [Info.plist](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/Info.plist#L44-L58): To add the deep linking params. 
* [PYPLCheckoutBridge.h](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/PYPLCheckoutBridge.h): To bridge between the objective C library and swift project
* [WebViewController.swift](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/WebViewController.swift): To setup SDK to listen in on the Webview, so that it can intercept in case of PYPL checkout URL
  * First to set the webview in the view controller like [here](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/WebViewController.swift#L24)
  * Then to intercept it in the delegate like [here](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/WebViewController.swift#L35)
* [AppDelegate.swift](https://github.com/pvenkatakrishnan/merchant-swift/blob/master/merchant-swift/AppDelegate.swift#L44-L51): To handle the deep link call back on merchant side and pass it to Paypal SDK to cleanup the SFVC it opened up.
