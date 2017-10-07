//
//  ViewLoad.swift
//  DeliveryApp
//
//  Created by Rigoberto Sáenz Imbacuán on 2/26/17.
//  Copyright © 2017 Rigoberto Sáenz Imbacuán. All rights reserved.
//

import UIKit

class ViewLoad {
    
    // --------------------------------------------------
    // Public Methods
    // --------------------------------------------------
    func loadScreen<T: UIViewController>(screenClass: T.Type) -> T {
        
        // Get the screen name
        let name = className(some: screenClass)
        
        // Load Storyboard
        let storyboard = UIStoryboard(name: name, bundle: nil)
        
        // Load ViewController an cast it
        if let screen = storyboard.instantiateViewController(withIdentifier: name) as? T {
            return screen
            
        }else {
            
            // Logs an error
            Log.shared.error("Screen \(name) not found")
            
            // Returns a default screen
            return UIViewController() as! T
        }
    }
    
    func loadNavController<T: UINavigationController>(navControllerClass: T.Type, with root: UIViewController) -> T {
        
        // Get the NavController name
        let name = className(some: navControllerClass)
        
        // Load Storyboard
        let storyboard = UIStoryboard(name: name, bundle: nil)
        
        // Load NavController an cast it
        if let navController = storyboard.instantiateViewController(withIdentifier: name) as? T {
            
            // Set the root view controller
            navController.setViewControllers([root], animated: false)
            return navController
            
        }else {
            
            // Logs an error
            Log.shared.error("Navigation controller \(name) not found")
            
            // Returns a default NavController
            return UINavigationController() as! T
        }
    }
    
    
    // --------------------------------------------------
    // Private Methods
    // --------------------------------------------------
    private func className(some: Any) -> String {
        return (some is Any.Type) ? "\(some)" : "\(type(of: some))"
    }
    
    // Singleton
    static let shared = ViewLoad()
    private init() {}
}
