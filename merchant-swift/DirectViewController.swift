//
//  DirectViewController.swift
//  merchant-swift
//
//  Created by Venkatakrishnan,Poornima on 1/30/17.
//  Copyright © 2017 Venkatakrishnan,Poornima. All rights reserved.
//

import Foundation

import UIKit

class DirectViewController: UIViewController {
    
    @IBOutlet weak var ppbutton: UIButton!
    @IBOutlet var instance: PYPLCheckout!
    override func viewDidLoad() {
        super.viewDidLoad()
        instance = PYPLCheckout.sharedInstance() as! PYPLCheckout;
        ppbutton.addTarget(self, action: #selector(self.directTapped), for: .touchUpInside)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func directTapped() {
        let url = URL(string: "https://paypalmerchant.herokuapp.com/getPPCheckoutURL")
        URLSession.shared.dataTask(with: url!, completionHandler: {
            (data, response, error) in
            if(error != nil){
                print("error")
            }else{
                do{
                    let jsonval = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as! [String : AnyObject]
                    
                    let  url = NSURL(string: jsonval["checkoutURL"] as! String)
                    let request:URLRequest = URLRequest(url : url as! URL);
                    self.instance.handleIfPPCheckout(request);
                }catch let error as NSError{
                    print(error)
                }
            }
        }).resume()
    }
    
    
}
