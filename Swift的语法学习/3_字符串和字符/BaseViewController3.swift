//
//  BaseViewController.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/2.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "字符串和字符"
        //1. 字符串
        baseMethod1()
        // 2.字符
        baseMethod2()
        // 3.字符串索引
        baseMethod3()
        //  4.插入和删除
        baseMethod4()
        //  5.前缀和后缀
        baseMethod5()
    }
    // MARK -- 字符串和字符
    func baseMethod1(){
        //字符串文字
        let someString  = "Some string literal value"
        // 多行字符串
        let qutotation = """
         jfdsklfdsjfdjslf
         kldfsdkfldslfkjdsklfdlsk
         kfdslkfdjsklfkldsfjdsklfkds
         klfkjdslkfdskjafkjldsfjdslfjds
         klfdsjfsdklfjdslfjdslfdsjlfdsafjlds
         klfdsjfkldskfldsaklfdjslfjdslfjdsfjdsljf
        """
        //字符串中的特殊字符
        // \0(空字符)
        // \\ (反斜杠)
        //  \t(水平制表符)
        //  \n(换行符)
        //  \"(双引号)
        //  \'(单引号)
        // 初始化一个空的字符串
        var emptyString = ""
        var anttherEmptyString = String()
        //检查一个String是否是一个空的
        if emptyString.isEmpty{
            print("Nothing to see here")
        }
        // 字符串的可变
        var variableString = "Horse"
        variableString += "and carriage"
        print("variableString\(variableString)")
    }
    //MARK -- 2.字符
    func baseMethod2(){
        // 字符
        for character in "dog"{
            print(character)
        }
    }
    //MARK -- 3.字符串的索引
    func baseMethod3(){
        //字符串的索引
        let greeting = "Gutnn tag!"
        print(greeting[greeting.startIndex])
        print(greeting[greeting.index(before: greeting.endIndex)])
        //使用indices属性访问字符串中所有的单个字符的索引
        for index in greeting.indices{
            print("\(greeting[index])",terminator:" ")
        }
    }
    // MARK -- 4.插入和删除
    func baseMethod4(){
        //插入
        var welcome = "hello"
        welcome.insert("!", at: welcome.endIndex)
        print("welcome\(welcome)")
        // 移除的方法
        //welcome.remove(at: <#T##String.Index#>)
    }
    // MARK: --- 前缀和后缀平等
    func baseMethod5(){
        //前缀
        var messageStr = "helloworld"
        if messageStr.hasPrefix("hello"){
            print("true")
        }else{
            print("false")
        }
        // 后缀
        var testmessagStr = "hellofengfeng"
        if testmessagStr.hasSuffix("feng"){
            print("true")
        }else{
            print("false")
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
