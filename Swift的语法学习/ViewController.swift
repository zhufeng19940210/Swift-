//
//  ViewController.swift
//  Swift的语法学习
//
//  Created by bailing on 2018/1/2.
//  Copyright © 2018年 zhufeng. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    // 懒加载数组创建
    lazy var dataArray: [String] = {
        return ["基本","基本操作员","字符串和字符","集合类型","控制流","功能","关闭","枚举","类和结构","属性","方法","标","遗产","初始化","反初始化","可选","错误处理","类型","嵌套类型","扩展","自动引用计数","内存安全","访问控制","高级操作员"]
    }()
    //懒加载UITableview
    lazy var ZFTableView : UITableView = {
        let tableView = UITableView()
        tableView.frame = UIScreen.main.bounds
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "TableView的基本的使用"
        setupTableView()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ViewController{
    fileprivate  func setupTableView(){
        self.view.addSubview(ZFTableView)
    }
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  dataArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //重用cell的机制
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = dataArray[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let baseVc = BaseViewController()
            self.navigationController?.pushViewController(baseVc, animated: true)
        }else if indexPath.row == 1{
            let baseVc2 = BaseViewController2()
            self.navigationController?.pushViewController(baseVc2, animated: true)
        }else if indexPath.row == 2{
            let baseVc3 = BaseViewController3();
            self.navigationController?.pushViewController(baseVc3, animated: true)
        }else if indexPath.row == 3{
            let baseVc4 = BaseViewController4()
            self.navigationController?.pushViewController(baseVc4, animated: true)
        }else if indexPath.row == 4{
            let baseVc5 = BaseViewController5()
            self.navigationController?.pushViewController(baseVc5, animated: true)
        }else if indexPath.row == 5{
            let baseVc6 = BaseViewController6()
            self.navigationController?.pushViewController(baseVc6, animated: true)
        }else if indexPath.row == 6{
            let baseVc7 = BaseViewController7()
            self.navigationController?.pushViewController(baseVc7, animated: true)
        }else if indexPath.row == 7{
            let baseVc8 = BaseViewController8()
            self.navigationController?.pushViewController(baseVc8, animated: true)
        }else if indexPath.row == 10{
            let baseVc11 = BaseViewController11()
            self.navigationController?.pushViewController(baseVc11, animated: true)
        }else if indexPath.row == 11{
            let baseVc12 = BaseViewController12()
            self.navigationController?.pushViewController(baseVc12, animated: true)
        }else if indexPath.row == 12{
            let baseVc13 = BaseViewController13()
            self.navigationController?.pushViewController(baseVc13, animated: true)
        }else if indexPath.row == 13{
            let baseVc14 = BaseViewController14()
            self.navigationController?.pushViewController(baseVc14, animated: true)
        }
    }
}
