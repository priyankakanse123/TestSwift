//
//  SVGVC.swift
//  TestSwift
//
//  Created by BridgeLabz on 21/03/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit
import SVGKit

class SVGVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad()
    {
        let img : UIImage?
        let httpUrl : String = "http://server.myspace-shack.com/d21/br.png"
        let url = NSURL(string: httpUrl)
        let data = NSData(contentsOfURL: url!)
        
        if UIImage(data: data!) != nil {
            
            print("not nil")
            imageView.image = UIImage(data: data!)
            
        }
        else
        {
            print("nil")
        }
    }
    
//    override func viewDidLoad() {
//        
//        var newImage : SVGKImage = SVGKImage(named: "a.svg")
//        //newImage.size = CGSizeMake(100, 100)
//        
//        
//        
//        //newImage.size = CG
//        
//        //var iView : SVGKFastImageView = SVGKImageFastView(SVGKImage: newImage)
//       // iView.frame = CGRectFromSVGRect(SVGRect(x: 100, y: 900, width: 100, height: 100))
//        
//        var imageview: SVGKFastImageView = SVGKFastImageView(SVGKImage: newImage)
//        
//        print("view height" , view.frame.height)
//        print("view width" , view.frame.width)
//        
//        imageview.frame = CGRectMake(0 , view.frame.width / 10 , view.frame.width, view.frame.height - (view.frame.width / 10) )
//        //imageview.frame = CGRectFromSVGRect(SVGRect(x: 100, y: 900, width: 100, height: 100))
//        
//        
//        //imageView.sizeThatFits() = CGSizeFromSVGRect(SVGRect(x: 100, y: 100, width: 100, height: 100))
//        
//        //imageView = CGRect(x: 100, y: 100, width: 100, height: 100)
//        
//        view.addSubview(imageview)
//       
//    }

}
