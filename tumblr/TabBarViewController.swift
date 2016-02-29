//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Vicki Tan on 2/25/16.
//  Copyright © 2016 Vicki Tan. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var exploreImage: UIImageView!
    
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateUp() {
        UIView.animateWithDuration(0.6, delay: 0, options: [], animations: { () -> Void in
            self.exploreImage.frame.origin.y = 438
            }, completion: { (Bool) -> Void in
                self.animateDown()
        })
    }
    
    func animateDown() {
        UIView.animateWithDuration(0.6, delay: 0, options: [], animations: { () -> Void in
            self.exploreImage.frame.origin.y = 444
            }, completion: { (Bool) -> Void in
                self.animateUp()
        })
    }
    
    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        
        if selectedIndex != 1 {
            animateUp()
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.exploreImage.alpha = 1
            })
        } else {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.exploreImage.alpha = 0
            })
        }
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
