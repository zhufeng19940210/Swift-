//
//  BaseViewController19.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController19: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "扩展"
        setupView()
    }
}
//扩展可以向类型添加新的功能，但是他们不能覆盖现有的功能
extension BaseViewController19{
    fileprivate func setupView(){
        print("这个是extension的扩展的方法")
    }
}
//扩展可以扩展吸现有类型的一个或者多个协议
//extension BaseViewController19:/*协议1，协议2*/{
//    
//}

