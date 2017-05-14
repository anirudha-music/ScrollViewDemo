//
//  ScrollViewController.swift
//  ProductOffers
//
//  Created by Anirudha on 12/05/17.
//  Copyright © 2017 Anirudha Mahale. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var ss: UIScrollView!
    @IBOutlet weak var horizontalView: UIView!
    
    @IBOutlet weak var eating: UIButton!
    @IBOutlet weak var hotel: UIButton!
    @IBOutlet weak var spa: UIButton!
    @IBOutlet weak var health: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slideTo(sender: eating)
        let xCenterPoint = UIScreen.main.bounds.width/2
        let point = CGPoint(x: -((eating.frame.width/2)+(eating.frame.origin.x)-xCenterPoint), y: 0)
        // Change the content insets of the scrollView and center the first button.
        ss.contentInset = UIEdgeInsets(top: 0, left: point.x, bottom: 0, right: point.x)
    }

    @IBAction func eating(_ sender: UIButton) {
        slideTo(sender: sender)
    }

    @IBAction func hotel(_ sender: UIButton) {
        slideTo(sender: sender)
    }
    
    @IBAction func saloon(_ sender: UIButton) {
        slideTo(sender: sender)
    }
    
    @IBAction func health(_ sender: UIButton) {
        slideTo(sender: sender)
    }
    
    func slideTo(sender: UIButton) {
        let xCenterPoint = UIScreen.main.bounds.width/2
        let point = CGPoint(x: (sender.frame.width/2)+(sender.frame.origin.x)-xCenterPoint, y: 0)
        // center the button in the screen.
        ss.setContentOffset(point, animated: true)
        UIView.animate(withDuration: 0.3) {
            // change the origin of the horizontal bar.
            self.horizontalView.transform = CGAffineTransform(translationX: sender.frame.origin.x, y: 0)
        }
        
        UIView.animate(withDuration: 0.3, delay: 0.3, options: [.curveEaseInOut], animations: {
            // change the width of the horizontal bar.
            self.horizontalView.frame.size.width = sender.frame.width
        }, completion: nil)
    }
}
