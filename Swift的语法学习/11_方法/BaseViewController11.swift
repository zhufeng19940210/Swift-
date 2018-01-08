//
//  BaseViewController11.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//
import UIKit
class BaseViewController11: UIViewController {
    // 类里面的方法都是实例方法
    class Counter {
        var count = 0
        //实例方法
        func increment(){
            count += 1
        }
        //实例方法
        func increment(by amount: Int){
            count += amount
        }
        //实例方法
        func resset(){
            count = 0
        }
    }
    // 类方法
    class SomeClass {
        class func someTypeMethod(){
            print("SomeTypeMetho的类方法")
        }
    }
    //结构体里面的方法
    struct LeverlTracker {
        static var hightestUnlockerLevel = 1
        var currentLevel = 1
        static func unlock(_ level:Int){
            if level > hightestUnlockerLevel{
                hightestUnlockerLevel = level
            }
        }
        static func isUnlocked(_ level: Int)->Bool{
            return level <= hightestUnlockerLevel
        }
        @discardableResult
        mutating func advance(to level:Int)->Bool{
            if LeverlTracker.isUnlocked(level){
                currentLevel = level
                return true
            }else{
                return false
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "类的方法"
        //1.调用类里面的实例方法
        let counter = Counter()
        counter.increment()
        print("count1:\(counter.count)")
        counter.increment(by: 5)
        print("count2:\(counter.count)")
        counter.resset()
        print("count3:\(counter.count)")
        //2.调用类方法
        SomeClass.someTypeMethod()
    }
}
