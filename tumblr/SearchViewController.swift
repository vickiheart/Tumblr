//
//  SearchViewController.swift
//  tumblr
//
//  Created by Vicki Tan on 2/25/16.
//  Copyright © 2016 Vicki Tan. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var animatedImage: UIView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
//    var animatedImage: UIImage!
//    
//    
//    loading_1 = UIImage(named: "loading-1")
//    loading_2 = UIImage(named: "loading-2")
//    loading_3 = UIImage(named: "loading-3")
    
    images = [loading_1, loading_2, loading_3]
    
    animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
    
    animatedImage.image = animatedImage
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        feedImage.alpha = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
