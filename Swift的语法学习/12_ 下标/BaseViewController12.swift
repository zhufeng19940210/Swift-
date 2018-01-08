//
//  BaseViewController12.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController12: UIViewController {
    //结构体
    struct TimesTable {
        let mutiplier: Int
        subscript(index: Int) -> Int
        {
            return mutiplier * index
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "下标语法"
        let threeTimesTable = TimesTable(mutiplier: 6)
        print("Six times three is \(threeTimesTable[6])")
        //下标使用
        var numberOfLegs = ["spider":8,"ant":6,"cat":4]
        numberOfLegs["bird"] = 2
    }
    
}
