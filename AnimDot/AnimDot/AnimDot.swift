//
//  AnimDot.swift
//  AnimDot
//
//  Created by 冯成林 on 16/7/14.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

class AnimDot: UIView {
    
    lazy var animView: UIView = UIView()
    
    var timer: NSTimer?
    
    override init(frame: CGRect) {super.init(frame: frame); viewprepare()}
    
    required init?(coder aDecoder: NSCoder) {super.init(coder: aDecoder); viewprepare()}
    
    func viewprepare(){
        
        addSubview(animView)
        animView.hidden = true
        clipsToBounds = false
        layer.masksToBounds = false
        hidden = true
    }

    func show(){
    
        hidden = false
        
        showAnimAction()
        
        timerOn()
    }
    
    func hide(){
        
        timerOff()
        hidden = true
    }
    
    
    func showAnimAction() {
        
        self.animView.transform = CGAffineTransformMakeScale(1, 1)
        
        animView.frame = bounds
        
        animView.hidden = false
        
        self.animView.alpha = 1
        
        UIView.animateWithDuration(1, animations: {
            
            self.animView.transform = CGAffineTransformMakeScale(5, 5)
            self.animView.alpha = 0
            
        })
    }
    
    

    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        layer.cornerRadius = bounds.size.width / 2
        animView.layer.cornerRadius = bounds.size.width / 2
        
        animView.backgroundColor = backgroundColor
        
    }

}
