

//
//  BaseViewController16.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//
import UIKit
class BaseViewController16: UIViewController {
    class Residence{
        var numberOfRooms = 1
    }
    class Person {
        var residence: Residence?
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "可选类型"
        //调用可选类型
        let zhufeng = Person()
        let roomCount = zhufeng.residence?.numberOfRooms
        print("roomCount\(roomCount)")
    }
}
