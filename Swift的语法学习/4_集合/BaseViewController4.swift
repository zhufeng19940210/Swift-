//
//  BaseViewController4.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "集合类型"
        //1.数组
        baseMethod1()
        //2.集合
        baseMethod2()
        
        
    }
    // MARK -- 1.集合类型
    func  baseMethod1(){
        //1.集合的概念
        //Array  数组有序
        //set    无序
        //Dictionary  字典无序
        //1.创建数组
        var someInts = [Int]()
        print("count\(someInts.count)")
        someInts.append(3)
        someInts.append(5)
        someInts.append(10)
        print("append count\(someInts.count)")
        someInts.remove(at: 0)
        print("remove count \(someInts.count)")
        //2.创建一个带有默认值的数组
        var threeDoubles = Array(repeating: 0.0 , count:3)
        print("threeDoubles\(threeDoubles)")
        //3.声明一个带有字符串的数值
        var shoppingList: [String] = ["Eggs","Milk"]
        print("shoppingList\(shoppingList)")
        //4.修改数组的创建
        var shoppingList2 = ["Eggs","Milk","Salt"]
        //访问数组
        print("count \(shoppingList2.count)")
        // 判断是否为空
        if shoppingList2.isEmpty{
            print("The shoppingList2 is empty")
        }else{
            print("The shoppingList2 is not empty")
        }
        //添加元素
        shoppingList2.append("Flour")
        shoppingList2 += ["Baking Powder"]
        //通过下标访问数组了
        var firstItem = shoppingList2[0]
        print("firstItem\(firstItem)")
        //更改值
        shoppingList2[0] = "Six eggs"
        //遍历数组
        for item in shoppingList2{
            print("item\(item)")
        }
        //使用emumerated)()
        for (index,value) in shoppingList2.enumerated(){
            print("Item\(index+1):\(value)")
        }
    }
    // MARK   --- 2.集合类型
    func baseMethod2(){
        //1.创建空集合
        var letters = Set<Character>()
        print("count \(letters.count)")
        //2.添加
        letters.insert("a")
        print("count\(letters.count)")
        //3.用数组字面量创建一个集合
        var favoriteGenres: Set<String> = ["fengfeng","test"]
        //4.声明方式创建
        var favoriteGenres2: Set = ["Rock","Classiccal","Hip hop"]
        print("count\(favoriteGenres2.count)")
        //5.访问和修改一个集合
        if favoriteGenres2.isEmpty{
            print("The favoriteGentes2 is empty")
        }else{
            print("The favoriteGentes2 is not empty")
        }
        //6.加入
        favoriteGenres2.insert("Jazz")
        // 隐式解包
        if let removerGenre = favoriteGenres2.remove("Jazz"){
            print("success")
        }else{
            print("failrue")
        }
        //检查一个里面是否包含特定的项目,contains
        if favoriteGenres2.contains("JAZZ"){
            print("有")
        }else{
            print("没有")
        }
        //遍历集合
        for genre in favoriteGenres2{
            print("\(genre)")
        }
        // 顺序的输出
        for genre2 in favoriteGenres2.sorted(){
            print("\(genre2)")
        }
        // 交集，并集， 全集
        let oddDigits: Set = [1,3,5,7,9]
        let evenDigits: Set = [0,2,4,6,8]
        let singleDigPrimeNumber: Set = [2,3,5,7]
        // 创建两个集合中的全部的新集合
        print("\(oddDigits.union(evenDigits).sorted())")
        //其值不在指定的集合中
        print("\(oddDigits.subtracting(singleDigPrimeNumber).sorted())")
        // 不相同的
        print("\(oddDigits.symmetricDifference(singleDigPrimeNumber).sorted())")
    }
    
    // MARK -- 3.字典
    func baseMethod3(){
        //1.创建一个空的字典
        var namesOfIntegers = [Int:String]()
        //2.字面量创建字典
        var airport: [String:String] = ["YYZ":"Toron","DUB":"Double"]
        //3. 类型推断的方法创建字典
        var airport2 = ["YYZ":"Toronto Peasson","DUB":"Dublin"]
        //4.访问修改字典
        print("count\(airport2.count)")
        //5.检查是否为空isEmpty
        if airport2.isEmpty{
            print("The airport2 is empty")
        }else{
            print("The airport2 is not empty")
        }
        //6.使用下标加入到字典中
        airport2["LHR"] = "London"
        print("new count\(airport2.count)")
        //7.隐式解包的方法方式
        if let airportName = airport2["DUB"]{
            print("The name of the airport is \(airportName)")
        }else{
            print("That airpot is not the airport dictionary")
        }
        //8.移除
        if let removerValue = airport2.removeValue(forKey: "DUB"){
            
        }else{
            
        }
        //9.变量字典
        for (airpotrCode,airportName) in airport2{
            print("\(airpotrCode):\(airportName)")
        }
        //key的遍历
        for airportCode in airport2.keys{
            print("Airport code:\(airportCode)")
        }
        //values的遍历
        for airportName in airport2.values{
            print("Airport name:\(airportName)")
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
