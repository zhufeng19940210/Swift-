//
//  BaseViewController14.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit
class BaseViewController14: UIViewController {
    struct Fahrenheit {
        var temperature:Double
        init() {
            temperature = 32.8
        }
    }
    //color的初始化
    struct Color {
        let red,green,blue:Double
        init(red:Double,green:Double,blue:Double) {
            self.red = red
            self.green = green
            self.blue  =  blue
        }
        init(white:Double) {
            red = white
            green = white
            blue = white
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "初始化"
        //调用结构体
        let f = Fahrenheit()
        print("The default temperature is \(f.temperature)")
        //调用初始化
        let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
        let halgGray = Color(white: 0.5)
        
    }
}
