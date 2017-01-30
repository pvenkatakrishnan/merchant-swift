//
//  WebViewController.swift
//  merchant-swift
//
//  Created by Venkatakrishnan,Poornima on 1/30/17.
//  Copyright © 2017 Venkatakrishnan,Poornima. All rights reserved.
//

import Foundation

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var ppwbeview: UIWebView!
    @IBOutlet var instance: PYPLCheckout!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        instance = PYPLCheckout.sharedInstance() as! PYPLCheckout;
        let url = URL (string: "https://paypalmerchant.herokuapp.com/cart");
        let requestObj = URLRequest(url: url!);
        ppwbeview.delegate = self;
        instance.setWebView(ppwbeview);
        ppwbeview.loadRequest(requestObj);

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return instance.handleIfPPCheckout(request as URLRequest!);
    }
    
}
