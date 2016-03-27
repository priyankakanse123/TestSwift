//
//  AlmofireTest.swift
//  TestSwift
//
//  Created by BridgeLabz on 23/03/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit
import Alamofire

class AlmofireTest: UIViewController {
    
    override func viewDidLoad()
    {
        Alamofire.download(.GET, "54.86.64.100:3000/api/v4/content/zip") { temporaryURL, response in
            let fileManager = NSFileManager.defaultManager()
            let directoryURL = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)[0]
            let pathComponent = response.suggestedFilename
            
            print("path" ,directoryURL.URLByAppendingPathComponent(pathComponent!))
            return directoryURL.URLByAppendingPathComponent(pathComponent!)
        }
    }

}
