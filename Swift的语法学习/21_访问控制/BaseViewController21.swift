//
//  BaseViewController21.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//
import UIKit
class BaseViewController21: UIViewController {
    public class SomePublicClass{}
    internal class SomeInternalClass{}
    fileprivate class SomeFilePrivate{}
    private class SomePrivateClass{}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "访问控制"
        //框架访问级别
        //open,public
    }
}
