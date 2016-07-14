//
//  AnimDot+Timer.swift
//  AnimDot
//
//  Created by 冯成林 on 16/7/14.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import Foundation


extension AnimDot {

    func timerOn(){
        NSDefaultRunLoopMode
        timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        NSRunLoop.mainRunLoop().addTimer(timer!, forMode: NSRunLoopCommonModes)
    }
    
    func timerAction(){
      
        showAnimAction()
    }
    
    func timerOff(){
        
        timer?.invalidate()
        timer = nil
    }


}