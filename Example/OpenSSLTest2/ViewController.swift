//
//  ViewController.swift
//  OpenSSLTest2
//
//  Created by yshrsmz on 09/12/2018.
//  Copyright (c) 2018 yshrsmz. All rights reserved.
//

import UIKit
import OpenSSL
import os.log

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let result = OpenSSLSwift().test()
        
        if #available(iOS 10.0, *) {
            os_log("test: %@", log: OSLog.default, type: .debug, result)
        } else {
            // Fallback on earlier versions
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

