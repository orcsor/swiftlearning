//
//  SnapKitDemoViewController.swift
//  swiftlearning
//
//  Created by liuwei on 2019/11/28.
//  Copyright © 2019 liuwei. All rights reserved.
//

import UIKit
import SnapKit

class SnapKitDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func demo1() {
        let v = UIView()
        v.backgroundColor = .red
        view.addSubview(v)
        v.snp.makeConstraints { (m) in
            m.width.height.equalTo(100)
            m.center.equalTo(self.view)
        }
    }

}
