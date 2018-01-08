//
//  BaseViewController2.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/2.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "基本运算符"
        self.view.backgroundColor = UIColor.white
        //1.指定运算符
        baseMethod1()
        //2.算术运算符
        baseMethod2()
        //3.三目运算符
        baseMethod4()
        //4.合并运算符
        baseMethod5()
        //5.范围操作
        baseMethod6()
        //6.半开区间
        baseMethod7()
        //7.单面范围
        baseMethod8()
    }
    //  MARK -- 1.指定运算符
    func baseMethod1(){
       let  b = 10
        var a = 5
        a = b
        print("a:\(a),b:\(b)")
        let (x,y) = (1,2)
        if  x == y{
            print("eqaul == ")
        }else{
            print("not equal")
        }
    }
    // MARK -- 2.算术运算符
    func baseMethod2(){
        // +(加) -(减) *(乘)  /(商)  %(取除数)
        var  a = 10
        var  b =  2.5
    }
    // MARK  -- 3.比较运算符
    func baseMethod3(){
        // 等于(==)
        // 不等于(!=)
        //大于(>)
        //小于(<)
        //大于或等于(>=)
        //小于或等于(<=)
        1 == 1
        2 != 1
        2  > 1
        2  < 1
        2 >= 1
        2 <= 1
        //2.元组也可以比较，从左到右，每次一个值进行比较，直到比较发现两个不相等的值
        (1,"zebar") < (2,"apple")

        (3,"apple") < (3,"bird")
        
        (4,"dog") == (4,"dog")
        
    }
    // MARK -- 4.三元条件运算符
    func baseMethod4(){
        // 三元运算符 格式： question ? answer1 : answer2
        // 如果question条件满足了返回了answer1，否则就是返回了answer2
//        if question{
//            answer1
//        }else{
//            answer2
//        }
        let contenHeight = 40
        let hasHeader = true
        let rowHeight = contenHeight + (hasHeader ? 50 : 20)
        print("rowHeight\(rowHeight)")
    }
    // MARK -- 5.合并操作符号
    func baseMethod5(){
        // ?? 使用的默认值
        let defautlColorName = "red"
        var userDefingedColorName: String?
        var colorNameToUse = userDefingedColorName ??  defautlColorName
        print("colorNameToUse\(colorNameToUse)")
    }
    // MARK -- 6.范围操作
    func baseMethod6(){
        // 范围操作
        for index in 1...5 {
            // 这个是闭合的1到5的范围
            print("\(index) times 5 is \(index * 5)")
        }

    }
    //  MARK -- 7.范围操作2  //半开区间a..<b
    func baseMethod7(){
        let names = ["Anna","Alex","Brian","Jack"]
        let count = names.count
        for i in 0..<count{
            print("Person\(i+1)is called\(names[i])")
        }
    }
    // MARK -- 8.范围操作 //单面范围
    func baseMethod8(){
        let names = ["zhufeng1","zhufeng2","zhufeng3","zhufeng4"]
        for name in names[2...]{
            print(name)
        }
        for name2 in names[...2]{
            print(name2)
        }
        for name3 in names[..<2]{
            print(name3)
        }
    }
    // MARK -- 9.逻辑运算符
    func baseMethod9(){
        // NOT
        let allowedEntry = false
        if !allowedEntry {
            print("access enied")
        }
        //and &&
        let entreDoorCode = true
        let passedRetinaScan = false
        if entreDoorCode && passedRetinaScan{
            print("welcome!")
        }else{
            print("access endied")
        }
        //or ||
        let hasDoorKey = false
        let knowsOverriderPassword = true
        if hasDoorKey || knowsOverriderPassword{
            print("welcome！")
        }else{
            print("ACCESS ENDEND")
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
