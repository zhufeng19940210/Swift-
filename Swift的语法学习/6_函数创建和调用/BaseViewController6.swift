//
//  BaseViewController6.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//
import UIKit
class BaseViewController6: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "函数使用"
        //1.调用函数
        //print(greet(person: "zhufeng"))
        //2.调用返回多个返回值的函数
        let bounds = minMax(array: [8,-6,3,109,71])
        print("min:\(bounds.min),mac:\(bounds.max)")
        //3.调用缺省的参数
        someFunction(1, secondParamterName: 2)
        //4.求平均值
        print("avage:\(arithemticMean(1,2,3,4,5))")
        //5.交换值
        var someInt = 3
        var anotherInt = 107
        //swapTwoInts(&someInt, &anotherInt)
        //6.函数
       // print("Result:\(mathFunction(2,3))")

    }
    // MARK -- 1.函数的创建 有返回值
    func greet(person:String) -> String {
        let greeting = "Hello" + person + "!"
        return greeting
    }
    // MARK --2.多个参数的函数 一个返回值
    func greet2(person:String,alreadByGreeted:Bool) -> String {
        if alreadByGreeted{
            // 为Ture的时候
            return greet(person: person)
        }else{
            return greet(person: person)
        }
    }
    // MARK -- 3.没有返回值的函数
    func greet(person:String) -> () {
        print("Hello,\(person)!")
    }
    // MARK: -- 4.具有多个返回值的函数
    func minMax(array: [Int]) -> (min:Int,max:Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count]{
            if value < currentMin{
                currentMin = value
            }else if value > currentMax{
                currentMax = value
            }
        }
        return (currentMin,currentMax)
    }
    // MARK -- 5.缺省删除用下划线 "_"
    func someFunction(_ firstParamterName:Int,secondParamterName:Int){
        
    }
    // MARK -- 6.使用默认值
    func someFunction2(parameterNameDefault:Int,paramterNameOfDefault:Int = 12) {
        
    }
    // MARK -- 7.变量参数, 求平均值
    func arithemticMean(_ numbers: Double...) -> Double {
        var total : Double = 0
        for number in numbers{
            total += number
        }
        return total / Double(numbers.count)
    }
    
    func swapTwoInts(_ a: inout Int, _ b: inout Int) -> () {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    //MARK -- 8.函数作为返回值
    func addTwoInts(_ a:Int,_ b:Int) -> Int {
        return a + b
    }
    func multiplyTwoInts(_ a:Int, _ b:Int) ->Int{
        return a * b
    }
    //var  mathFunction: (Int ,Int) -> Int = addTwoInts(self)

    //MARK --- 9.函数作为参数
    func printMathResult(_ mathFunction:(Int,Int) -> Int,_ a: Int, _ b: Int){
        print("Result:\(mathFunction(a,b))")
    }
    
    //MARK: ---10. 嵌套函数
    
    
    
}
