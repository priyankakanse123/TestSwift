//
//  ViewController.swift
//  TestSwift
//
//  Created by BridgeLabz on 09/03/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import ReactiveKit
import ReactiveUIKit
import ReplayKit
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    var a = Observable("kill")
     var json : NSMutableArray?
    

    @IBAction func changeVarButtonPressed(sender: AnyObject) {
        
        a.value = "hello"
        
    }

    @IBOutlet weak var webView: UIWebView!
    @IBAction func changeTextButtonPressed(sender: AnyObject) {
        
        a.value = TextField1.text!
    }
    
    @IBOutlet weak var imageView: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        a.bindTo(TextField1)
        a.bindTo(textField2)
        
        // call image from url
        
        
        
        //self.urlData("http://52.90.50.117:3046/api/v1/user_content_view")
        
        print("hello ended")
        
        self.varchange()
        
        //let image = UIImage(named: "xz").
//        image.bindTo(imageView1)
//        image.bindTo(imageView2)
        
        
        
        
    }
    
    func varchange ()
    {
        a.value = "3"
        
    }
    
   
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //call json from url
    
    func callJSon ()
    {
        //var json : NSMutableArray?
    NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://52.90.50.117:3046/api/v1/user_content_view")!, completionHandler: { (data, response, error) -> Void in
    // Check if data was received successfully
    if error == nil && data != nil {
    do {
    // Convert NSData to Dictionary where keys are of type String, and values are of any type
     self.json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as? NSMutableArray
    // Access specific key with value of type String
    let Dict = self.json! [1]
    print (Dict)
    } catch {
    // Something went wrong
    }
    }
    }).resume()
        
        
    }
    
//    func JSONLoader()
//    {
//        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
//        let session = NSURLSession(configuration: config)
//        let task = session.dataTaskWithURL("http://52.90.50.117:3046/api/v1/user_content_view" as! NSURL , completionHandler: { (data, response, error) in
//            // this is where the completion handler code goes
//            
//            
//            if error == nil && data != nil {
//                do {
//                    // Convert NSData to Dictionary where keys are of type String, and values are of any type
//                    var json : NSMutableArray = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSMutableArray
//                    // Access specific key with value of type String
//                    let Dict = json [1]
//                    print (Dict)
//                        } catch {
//                                    // Something went wrong
//                                    }
//                
//            }
//
//        })//.resume()
//    }
    

}



