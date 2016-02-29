//
//  LoginViewController.swift
//  tumblr
//
//  Created by Vicki Tan on 2/28/16.
//  Copyright © 2016 Vicki Tan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func cancelButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var AccountViewController = segue.destinationViewController
        AccountViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        fadeTransition = FadeTransition()
        AccountViewController.transitioningDelegate = fadeTransition
        fadeTransition.duration = 1.0
    }


}
