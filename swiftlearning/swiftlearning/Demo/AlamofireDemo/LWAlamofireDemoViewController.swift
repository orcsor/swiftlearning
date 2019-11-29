//
//  LWAlamofireDemoViewController.swift
//  swiftlearning
//
//  Created by liuwei on 2019/11/29.
//  Copyright © 2019 liuwei. All rights reserved.
//

import UIKit
import Alamofire

/// Alamofire网络请求例子
class LWAlamofireDemoViewController: LWViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

         demo1()
    }
    
}

extension LWAlamofireDemoViewController {
    private func demo1() {
        Alamofire.SessionManager.default.request("https://ios.tipsoon.com/?c=api3&a=getInfos").responseJSON { (result) in
            
            guard
                let json = result.result.value as? [String: Any],
                let status = json["status"] as? Int,
                let msg = json["msg"] as? String
            else {
                print("数据错误")
                return
            }
            
            print("status: \(status) msg: \(msg)")
        }
    }
}
