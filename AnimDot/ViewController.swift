//
//  ViewController.swift
//  AnimDot
//
//  Created by 冯成林 on 16/7/14.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ainmDot: AnimDot!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,Int64(1 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
            self.ainmDot.show()
        })
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,Int64(5 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
            self.ainmDot.hide()
        })
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,Int64(8 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
            self.ainmDot.show()
        })
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,Int64(10 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
            self.ainmDot.hide()
        })
    }


}

