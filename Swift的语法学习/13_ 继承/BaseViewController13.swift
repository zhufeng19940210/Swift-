//
//  BaseViewController13.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController13: UIViewController {
    // 定义一个基类
    class Vehicle{
        //final这个是常量了不能重写的功能了
        final var  color =  "red "
        var currentSpeed = 0
        var zdescripton:String{
            return "traveling at \(currentSpeed) miles per hour"
        }
        func makeNoise(){
        }
    }
    //继承父类的方法
    class Bicycle:Vehicle{
        // 这个是自己新加的属性
        var hasBasket = false
        // 重写方法 override的属性方法
        override func makeNoise() {
            print("Choo Choo")
        }
        //重写属性
//        override var currentSpeed: Int{
//            didSet{
//
//            }
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "继承"
        let someVehicle = Vehicle()
        someVehicle.currentSpeed = 100
        print("Vehicle: \(someVehicle.zdescripton)")
        //调用子类的方法
        let bicyle = Bicycle()
        bicyle.hasBasket = true
        bicyle.currentSpeed = 15
        print("Bicycle \(bicyle.zdescripton)")
        bicyle.makeNoise()
    }
}
