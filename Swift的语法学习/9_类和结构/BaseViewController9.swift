//  BaseViewController9.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController9: UIViewController {
    //定义结构体《==》  是值类型
    struct Resolution {
        var width = 0
        var height = 0
    }
    //定义一个类 《==》 是引用类型
    class VideoMode {
        var resolution = Resolution()
        var interlaced = false
        var frameRate = 0.0
        var name: String?
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "类和结构体"
        //创建结构体和类的实例
        let someResolution = Resolution()
        print("The width of someResolution is \(someResolution.width)")
        print("The height of someResolution is \(someResolution.height)")
        let someVideoMode  = VideoMode()
        print("The widith of someResolution is \(someVideoMode.resolution.width)")
    }
    // MARK -- 1.类和结构体的创建
    func baseMethod(){
        /*
        class SomeClass{
            
        }
        struct SomeStructure {
            
        }
         */
    }
    
}
