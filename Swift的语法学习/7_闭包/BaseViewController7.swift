//
//  BaseViewController7.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController7: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "闭包"
        //1.无参数的闭包表达式
        printStr()
        //2.有参数的闭包表达式
        print(add(3,5))
        
    }
    /*无参数形式的闭包表达式语法形式如下:*/
    /*{()->返回值 in
        语句
     }*/
    let printStr = { () -> Void in
        print("swift的闭包的使用")
    }
    //有参数的闭包表达式语法形式
    /*
     {(参数列表) -> 返回值类型 in
     语句
     }
     */
    let add = {(x:Int,y:Int)->Int in
        return x+y
    }
    /*
     1.将闭包表达式作为函数的参数
     */
    func copare(arr:[int],value:Int,cb:(_ Num:Int,_ value:Int)->Bool)->Bool{
        for item in arr{
            if(cb item,value)){
                return true
            }
        }
        return false
    }
}
