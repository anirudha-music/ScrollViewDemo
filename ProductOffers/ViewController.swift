//
//  ViewController.swift
//  ProductOffers
//
//  Created by Anirudha on 10/05/17.
//  Copyright © 2017 Anirudha Mahale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var horizontalView: UIView!
    
    
    @IBAction func one(_ sender: UIButton) {
        slideScroll(x: sender.frame.origin.x)
    }
    
    @IBAction func tow(_ sender: UIButton) {
        slideScroll(x: sender.frame.origin.x)
    }
    
    @IBAction func three(_ sender: UIButton) {
        slideScroll(x: sender.frame.origin.x)
    }
    
    @IBAction func four(_ sender: UIButton) {
        slideScroll(x: sender.frame.origin.x)
    }
    
    @IBAction func five(_ sender: UIButton) {
        slideScroll(x: sender.frame.origin.x)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func slideScroll(x: CGFloat) {
        print(x)
        print(self.horizontalView.frame.origin.y)
        UIView.animate(withDuration: 0.5, animations: {
            self.horizontalView.frame.origin.x = x
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

