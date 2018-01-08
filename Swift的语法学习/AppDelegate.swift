//
//  AppDelegate.swift
//  Swift的语法学习
//  Created by bailing on 2018/1/2.
//  Copyright © 2018年 zhufeng. All rights reserved.
//
import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //如果不在这个里创建window对象，那么程序会通过main.storyboard去创建程序的界面
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
        //程序将要变成活跃了
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
        //程序进入到后台了，暂停视频/音频播放，游戏需要暂停游戏，保存数据
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        //程序即将进入到前台了
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
        //程序变的活跃，
        //程序从后台重新进入到前台
        //来电打断结束
    }
    func applicationWillTerminate(_ application: UIApplication) {
        // 应用程序将要终止
    }
}

