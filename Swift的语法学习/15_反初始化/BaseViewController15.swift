
//
//  BaseViewController15.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//
import UIKit
class BaseViewController15: UIViewController {
    
    class Bank {
        static var coinsInBank = 10_000
        //static func distribute(coins nubmer)
    }
    // 创建对象
//    class Player {
//        var coinsinPurse: Int
////        init(conins: Int) {
////          //  coinsinPurse =
////        }
//        deinit {
//            print("这个是deinit的使用")
//        }
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "反初始化"
    }
    
}
