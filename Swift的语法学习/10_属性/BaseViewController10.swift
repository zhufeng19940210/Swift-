//
//  BaseViewController10.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController10: UIViewController {
    struct FixedLengthRange {
        var firstValue: Int
        let lenght:Int
    }
    class DataImporter {
        var fileName = "data.txt"
    }
    class DataManager {
        lazy var importer = DataImporter()
        var data = [String]()
    }
    struct Point {
        var x = 0.0 ,y = 0.0
    }
    struct Size {
        var width = 0.0,height = 0.0
    }
    struct Rect {
        var origin = Point()
        var size   = Size()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "属性"
        // 1.调用结构体
        var rangeOfThreeItems = FixedLengthRange(firstValue: 0, lenght: 3)
        rangeOfThreeItems.firstValue = 6
        //2.懒加载lazy的使用
        let manager = DataManager()
        manager.data.append("Some data")
        manager.data.append("some more data")
        print(manager.importer.fileName)
    }
    // MARK -- 懒加载的方法 "lazy"的关键字来使用
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
