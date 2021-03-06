//
//  ViewController.swift
//  LoadingButton
//
//  Created by Septiyan Andika Isanta on 06/26/2016.
//  Copyright (c) 2016 Septiyan Andika Isanta. All rights reserved.
//

import UIKit
import LoadingButton

class ViewController: UIViewController {

    @IBOutlet var loginButton: LoadingButton!
    @IBOutlet var signupButton: LoadingButton!
      override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.indicatorAlignment = .Right
        loginButton.loadingText = "Authenticating "
        loginButton.indicatorColor = UIColor.redColor()
        
        
        signupButton.indicatorAlignment = .Left
        signupButton.loadingText = "Please wait"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionLogin(sender: AnyObject) {
        loginButton.loading = true
        
        let time = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 3 * Int64(NSEC_PER_SEC))
        dispatch_after(time, dispatch_get_main_queue()) {
            self.loginButton.loading = false
            //put your code which should be executed with a delay here
        }
        
    }

    @IBAction func actionSignUp(sender: AnyObject) {
        
        signupButton.loading = true
        
        let time = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 4 * Int64(NSEC_PER_SEC))
        dispatch_after(time, dispatch_get_main_queue()) {
            self.signupButton.loading = false
            //put your code which should be executed with a delay here
        }
    }
}

