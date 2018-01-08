//
//  BaseViewController5.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "控制流"
        //1.for -in循环
        baseMethod1()
        //2.控制语句的使用
        baseMethod6()
        //3.guard---else
        baseMethod7()
        
    }
    // MARK  --For-In循环
    func baseMethod1(){
        // 数组循环
        //1.for-in循环
        let names = ["Anna","Alex","Brian","Jack","Zhufeng"]
        for name in names{
            print("hello ,\(name)!")
        }
        //字典
        let numberOfLegs = ["spider":8 ,"ant": 6,"cat":4]
        for(animalName,legCount)in numberOfLegs{
            print("\(animalName)s hava \(legCount) legs")
        }
        //普通的遍历
        for index in 1...5{
            print("\(index) times is \(index * 5)")
        }
        //如果不需要用到的值就用下划线代替了_
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power{
            answer *= base
        }
        print("\(base) to the power of \(power) is \(answer)")
        
        let mintues = 60
        for tickMark in 0..<mintues{
            print("\(tickMark)")
        }
    }
    // MARK -- 2. while  repeat -- while 循环  do -- while 循环的东西了，先要执行一次do里面的懂了
    
    func baseMethod2(){
        //while循环
        var square = 0
        var diceRool = 0
        while square < diceRool{
            
        }
        // repeat -- while
        
    }
    // MARK -- 3. if循环
    func baseMethod3(){
        //1.if循环
        var temp = 30
        if temp <= 32{
            print("ok")
        }else{
            print("no")
        }
    }
    //MARK -- 4.switch
    func baseMethod4(){
        // switch
        let someCharacter: Character = "Z"
        switch someCharacter {
        case "a":
            print("a")
        case "b":
            print("b")
        default:
            print("default")
        }
    }
    //MARK --元组
    func  basseMethod5(){
        // 元组循环
        let somePoint = (1,1)
        switch somePoint {
        case (0,0):
            print("(0.0)")
        case (_,0):
            print("")
        case (0,_):
            print("")
        case (-2...2,-2...2):
            print("")
        default:
            print("")
        }
    }
    // MARK -- 控制语句
    func baseMethod6(){
        //continue
        //break
        //return
        //fallthrough
        //throw
        //1.fallthorugh
        let integerToDescibe = 5
        var zdescription = "The number \(integerToDescibe) is"
        switch integerToDescibe {
        case 2,3,5,7,11,13,17,19:
            zdescription += "a prime number, and also"
            //这里相当于break的使用
            fallthrough
        default:
            zdescription += "an integer"
        }
        print("\(zdescription)")
    }
    //MARK -- gurad的使用
    func  baseMethod7(){
        // guard语句条件必须是要为真,else语句后面是假的数据
        var person = ["name":"zhufeng"]
        guard let name = person["name"] else {
            print("没有值了")
            return
        }
        print("真的有值了")
    }
    // MARK: -- 检查API
    func baseMethod8(){
        //检查api是否可以使用
        if #available(iOS 10, *){
            print("可以使用")
        }else{
            print("不能使用")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
