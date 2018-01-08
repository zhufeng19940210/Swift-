//
//  BaseViewController18.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/3.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit

class BaseViewController18: UIViewController {
    //定义类型
    class MediaItem{
        var name: String
        init(name:String) {
            self.name = name
        }
    }
    class Movie:MediaItem{
        var director : String
        init(name:String,director:String){
            self.director = director
            super.init(name: name)
        }
    }
    class Song:MediaItem{
        var artist: String
        init(name:String,artist:String){
            self.artist = artist
            super.init(name: name)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "类型转换"
        // 检查类型用的关键字是使用(is)的去判断
        // as? 可能为空了
        // as! 这个是一定是有值过来了
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
