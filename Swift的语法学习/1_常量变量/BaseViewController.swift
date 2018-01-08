
//
//  BaseViewController.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/2.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "基础介绍"
        //1. 变量,常量
        baseMthod()
        //2.数据类型
        baseMthod2()
        //3.类型推断
        baseMethod3()
        //8.元组
        baseMethod8()
        // 13.断言
        baseMethod13()
    }
    //MARK --1.常量和变量
    func baseMthod(){
        // 1.声明常量和变量
        // let 定义常量,一旦确定就不能修改了
        // var 定义变量，可以多次赋值
        let maxMinuNumOfLoginAttemps = 10
        var currentLoginAttempt = 0
        // 这里是错误的不能够修改常量的值
        //maxMinuNumOfLoginAttemps = 20
        currentLoginAttempt  = 100
        // 2.类型注解：声明变量
        var welecomMessage: String = "Hello wold"
        var age : Int    = 100
        var height : CGFloat = 112.3
        // 3.定义多个变量类型
        var red ,green ,blue: Double
    }
    // MARK  -- 2.数据类型
    func baseMthod2(){
        // 1.整型 -4 ,677
        // 无符号 (min == 0 ,max == 255)
        let UminValue = UInt8.min
        let UmaxValue = UInt8.max
        print("UminValue:\(UminValue),UmaxValue:\(UmaxValue)")
        // 符号 (min == -128,max == 127)
        let minValue = Int8.min
        let maxValue = Int8.max
        print("minValue:\(minValue),maxValue:\(maxValue)")
        //Int对应的不同的平台值也是不一样的
        // 32位 UInt和UInt32
        // 64位 UInt和UInt64
        // UInt32 (min ==0 ,max == 4294967295)
        let UminValue32 = UInt32.min
        let UmaxValue32 = UInt32.max
        print("minValue\(UminValue32),maxValue:\(UmaxValue32)")
        // Int32 (min == -2147483648,max ==2147483647)
        let minValue32 = Int32.min
        let maxValue32 = Int32.max
        print("minValue\(minValue32),maxValue:\(maxValue32)")
        //UInt64 (min ==0 ,max ===18446744073709551615)
        let UminValue64 = UInt64.min
        let UmaxValue64 = UInt64.max
        print("minValue\(UminValue64),maxValue:\(UmaxValue64)")
        //Int64 (min ==-9223372036854775808 ,max ==9223372036854775807)
        let minValue64 = Int64.min
        let maxValue64 = Int64.max
        print("minValue\(minValue64),maxValue:\(maxValue64)")
        //2.浮点类型 3.1444
        //Double:代表是一个64位的浮点数
        //Float: 代表是一个32位的浮点数
        
    }
    //MARK -- 3.类型安全和类型推断
    func baseMethod3(){
        //1.类型推断,meanofLine为Int类型
        let meaningOfLine = 42
        //2.当推断浮点数的类型时，swift总是选择Double类型(不是float)
        let pi = 3.14159
        //3.从上下文中推断出一种类型:Double将从上下文推断出来的
        let antherpi = 3 + 0.14259
    }
    // MARK -- 4.数学文字
    func baseMethod4(){
        //一个十进制数，没有前缀
        let decimalInteger = 17
        //一个二进制数字，带有前缀ob
        let binaryInterger = 0b10001
        //一个八进制制数 ，有前缀00
        let octalInteger = 0o21
        //一个十六进制数 ，有前缀ox
        let hexadeicmalInterge = 0x11
    }
    // MARK -- 5.数字类型转换
    func baseMethod5(){
        // 整数转换
        let three = 3
        let pointOneFourOneFiveNine = 0.14259
        // 类型转换了int转成Double
        let pi = Double(three)  + pointOneFourOneFiveNine
        print("pi\(pi)")
    }
    // MARK -- 6.类型别名
    func baseMethod6(){
        //类型别名 typealias
        typealias AudioSample  = UInt8
        let maxValue = AudioSample.max
        print("maxValue:\(maxValue)")
    }
    // MARK -- 7.布尔类型
    func baseMethod7(){
        //布尔类型：Bool:有两个值:true , false
        let orangeAreOrange = true
        let turnipsAreDelicious = false
        if turnipsAreDelicious{
            print("Mmm, tasty turnips")
        }else{
            print("Eww,turnips are horriblie.")
        }
    }
    // MARK: -- 元组
    func baseMethod8(){
        // 元组是一个复合值，元组中的值可以使任何类型
        let http404Error = (404,"Not Found")
        let (statusCode,statusMessage) = http404Error
        // 通过key来获取值
        print("The status cod is \(statusCode)")
        print("The status message is \(statusMessage)")
        //通过索引来获取
        print("index 0 code is \(http404Error.0)")
        print("index 1 message is \(http404Error.1)")
        // 定义元组命名
        let http200Error = (stasutCode:200,descipation:"ok")
        // 通过key来访问了
       // print("The status code is \(http200Status.statusCode)")
        // Prints "The status code is 200"
        //print("The status message is \(http200Status.description)")
    }
    // MARK -- 9.可选类型
    func baseMethod9(){
        //1.如果定义了一个可选变量而不提供默认值,则会自动nil为这个变量
//        var  surveryAnswer: String?  // 这个会自动的设置一个nil
//        //2.强制解包
//        var convertedNumber != nil{
//            // 有值的内容
//            print("convertedNumber is \(convertedNumber)")
//        }else{
//            print("convertedNumber is empty")
//        }
//        //3。一旦确定包含一个值，就可以通过！在可选名称的末尾添加一个感叹号。
//        // 感叹号的作用是"我知道这个可选肯定有价值，请使用它"
//        if convertedNumber != nil{
//            print("convertedNumber is \(convertedNumber!)")
//        }
    }
    // MARK -- 10.可选绑定
    func baseMethod10(){
        // 先转换然后在赋值了
        if let firstNumber = Int("4"){
            if let secondNumber = Int("42"){
                if firstNumber > secondNumber && secondNumber < 100{
                    print("\(firstNumber)<\(secondNumber)< 100")
                }
            }
        }
    }
    // MARK -- 11.隐含解包选项
    func baseMethod11(){
        var accumedStrg : String?
        //1.普通的处理 ！= nil
        if accumedStrg != nil{
            print("\(accumedStrg)")
        }
        //2.可选绑定的隐式解包可选方法
        if let  defineString = accumedStrg {
            print("kkfkdkfksdk")
        }
    }
    // MARK ---12.错误处理
//    func baseMethod12() throws{
//
//    }
//    // 调用的方法
//    do{
//        try
//            baseMethod12()
//            eatAsandwich()
//    }catch{
//        print("错误的东西")
//    }catch{
//        print("错误的东西")
//    }
    
    // MARK -- 13.断言和先决条件 , 在运行时的检查
    func baseMethod13() {
        let age = 4
        assert(age >= 0, "A person's age can't be less than zero.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
