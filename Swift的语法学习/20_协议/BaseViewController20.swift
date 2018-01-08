
//
//  BaseViewController20.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//
import UIKit
//协议语法
protocol BaseViewController20Delegate:class {
    
}
class BaseViewController20: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "协议语法"
    }
}
