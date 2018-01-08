//
//  BaseViewController8.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//
import UIKit
//创建枚举
enum SomeEnumeratioin {
    // 定义你要内容
}
//单一的枚举 是值类型
enum CompassPoint {
    case north ,south,east,west
}
//产品类型的枚举
enum BarCode {
    case upc(Int,Int,Int)
    case qrCode(String)
}
//原始价值
enum ASCIIControlCharacter: Character {
    case  tab = "\t"
    case  lineFeed = "\n"
    case  carrigaeReturn = "\r"
}
class BaseViewController8: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "枚举"
        // 一旦定义了知道类型了就可以随便改变值
        // var directionToHeade = CompassPoint.west
        // directionToHeade = .north
        //定义产品的条形码
        var productBarCode = BarCode.upc(8, 85909, 52113)
        productBarCode = .qrCode("jfdskfdkslflkdsjflds")
    }
    // MARK -- 1.枚举的介绍
    func baseMethod() {
        //1.枚举的定义
        //2.使用关键字enum来创建枚举
        var directionToHead = CompassPoint.west
        directionToHead = .south
        switch directionToHead {
        case .south:
            print()
        case .west:
            print()
        case .north:
            print()
        case .east:
            print()
        default:
            print()
        }
    }
}
