//
//  ComposeViewController.swift
//  tumblr
//
//  Created by Vicki Tan on 2/25/16.
//  Copyright © 2016 Vicki Tan. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var fadeTransition: FadeTransition!
    
    @IBAction func nevermindAction(sender: AnyObject) {
        
        let duration = 0.3
        let damping: CGFloat = 0.6
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.photoButton.frame.origin.y = -100
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.05, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.chatButton.frame.origin.y = -100
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.1, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.textButton.frame.origin.y = -100
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.15, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.linkButton.frame.origin.y = -100
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.2, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.quoteButton.frame.origin.y = -100
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.25, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.videoButton.frame.origin.y = -100
            }) { (Bool) -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
        textButton.frame.origin.y = 600
        photoButton.frame.origin.y = 600
        quoteButton.frame.origin.y = 600
        linkButton.frame.origin.y = 600
        chatButton.frame.origin.y = 600
        videoButton.frame.origin.y = 600
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        let duration = 0.3
        let damping: CGFloat = 0.8
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.photoButton.frame.origin.y = 145
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.05, usingSpringWithDamping: damping, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.chatButton.frame.origin.y = 263
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.1, usingSpringWithDamping: damping, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.textButton.frame.origin.y = 145
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.15, usingSpringWithDamping: damping, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.linkButton.frame.origin.y = 263
            }) { (Bool) -> Void in
        }
    
        UIView.animateWithDuration(duration, delay: 0.2, usingSpringWithDamping: damping, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.quoteButton.frame.origin.y = 145
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(duration, delay: 0.25, usingSpringWithDamping: damping, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.videoButton.frame.origin.y = 263
            }) { (Bool) -> Void in
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var TabBarViewController = segue.destinationViewController
        TabBarViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        fadeTransition = FadeTransition()
        TabBarViewController.transitioningDelegate = fadeTransition
        fadeTransition.duration = 1.0

    }


}
