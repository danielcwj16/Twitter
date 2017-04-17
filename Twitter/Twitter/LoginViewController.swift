//
//  ViewController.swift
//  Twitter
//
//  Created by Weijie Chen on 4/12/17.
//  Copyright © 2017 Weijie Chen. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(_ sender: Any) {
       // let twitterClient = BDBOAuth1SessionManager
        TwitterClient.sharedInstance.login(success: {
            print("I'have logged in")
            
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
        }) { (error: Error ) in
            print("Error: \(error.localizedDescription)")
        }

    }
    
    @IBAction func unwindToLoginVC(segue:UIStoryboardSegue){
    }

}
