//
//  AppDelegate.swift
//  WidgetDemo
//
//  Created by 姚君 on 16/10/31.
//  Copyright © 2016年 certus. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    public var rootVC:TabBarViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let shared = UserDefaults(suiteName: "group.com.cocoyaojun.TodayWidget")
        let sharedDic:Dictionary<String,String> =
            ["part1":"first item",
             "part2":"second item",
             "part3":"third item",
             "part4":"forth item",
             "title1":"“充电5分钟，通话2小时”这句话为什么会火？",
             "title2":"苹果用一条“跑马灯”重新定义了笔记本！",
             "title3":"你知道你和行李经过安检时，电脑上会显示什么画面吗？",
             "title4":"日本匠人成功秘诀 什么是真正的“工匠精神”"]
        shared?.set(sharedDic, forKey: "sharedDic")
        shared?.synchronize()
        
        rootVC = self.window?.rootViewController as? TabBarViewController
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        let prefix = "TodayWidget://action="
        guard url.absoluteString.contains(prefix) else {
            return false
        }
        let action = url.absoluteString.substring(from: prefix.endIndex)
        if action == "vc1" {
            rootVC?.selectedIndex = 0
        }else if action == "vc2" {
            rootVC?.selectedIndex = 1
        }else if action == "vc3" {
            rootVC?.selectedIndex = 2
        }else if action == "vc4" {
            print("12121")
            rootVC?.performSegue(withIdentifier: "pushToDetail", sender: nil)
            print("12121111")
        }
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

