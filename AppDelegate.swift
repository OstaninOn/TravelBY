//
//  AppDelegate.swift
//  TravelBY
//
//  Created by  aleksandr on 16.01.24.
//

import OSLog
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let rayGreen = UIColor(named: "rayGreen")
    UITextField.appearance().tintColor = rayGreen
    UITextView.appearance().tintColor = rayGreen
    
    return true
  }
}

