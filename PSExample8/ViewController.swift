//
//  ViewController.swift
//  PSExample8
//
//  Created by Vince Day on 1/14/16.
//  Copyright © 2016 Vince Day. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let manager = AFHTTPSessionManager()
        
        manager.GET("https://api.instagram.com/v1/tags/clararockmore/media/recent?client_id= f36a9e6273554a3492d65649b0f77fdb",
            parameters: nil,
            progress: nil,
            success: { (operation: NSURLSessionDataTask,responseObject: AnyObject?) in
                if let responseObject = responseObject {
                    print("Response: " + responseObject.description)
                }
            },
            failure: { (operation: NSURLSessionDataTask?,error: NSError) in
                print("Error: " + error.localizedDescription)
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// test committ