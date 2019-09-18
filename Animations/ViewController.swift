//
//  ViewController.swift
//  Animations
//
//  Created by Saul Alberto Cortez Garcia on 9/12/19.
//  Copyright © 2019 Saul Alberto Cortez Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewTest: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func actButtonTapped(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            pulse()
        default:
            print("Not selected")
        }
    }
    
    
    func pulse(){
        let pulse1 = CASpringAnimation(keyPath: "transform.scale")
        pulse1.duration = 0.6
        pulse1.fromValue = 1.0
        pulse1.toValue = 1.12
        pulse1.autoreverses = true
        pulse1.repeatCount = 3
        pulse1.initialVelocity = 0.5
        pulse1.damping = 0.9
        
        //        let animationGroup = CAAnimationGroup()
        //        animationGroup.duration = 2.7
        //        animationGroup.repeatCount = 1000
        //        animationGroup.animations = [pulse1]
        
        viewTest.layer.add(pulse1, forKey: "pulse")
    }
    

}

