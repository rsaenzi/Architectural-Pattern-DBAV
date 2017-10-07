//
//  ScreenSplash.swift
//  DeliveryApp
//
//  Created by Rigoberto Sáenz Imbacuán on 2/25/17.
//  Copyright © 2017 Rigoberto Sáenz Imbacuán. All rights reserved.
//

import UIKit

class ScreenSplash: UIViewController {
    
    override func viewDidLoad() {
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0, qos: DispatchQoS.userInteractive) {
            ViewLoad.loadScreen(<#T##ViewLoad#>)
        }
        
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(<#delayInSeconds#> * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            <#code to be executed after a specified delay#>
//            });
    }
}
