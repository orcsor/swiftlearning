//
//  ViewController.swift
//  swiftlearning
//
//  Created by liuwei on 2019/11/28.
//  Copyright © 2019 liuwei. All rights reserved.
//

import UIKit

private let cellId = "cellId"

class ViewController: UITableViewController {
    
    private var vcArray:[[String: String]]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "首页"
        
        setupUI()
    }


}

extension ViewController {
    private func setupUI() {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)

        
        // 1. 获取viewcontroller配置
        vcArray = [
            ["className": "LWSnapKitDemoViewController", "title": "SnipKit Demo"],
            ["className": "LWHandyJSONDemoViewController", "title": "HandyJSON Demo"],
            ["className": "LWAlamofireDemoViewController", "title": "Alamofire Demo"],
            ["className": "LWImageDemoViewController", "title": "图片优化 Demo"]
        ]
        
        // 2. 设置表格
    }
}


// MARK: -
extension ViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        let title = vcArray?[indexPath.row]["title"] ?? "忘记设置标题？"
        cell.textLabel?.text = "\(title)"
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vcArray?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("点击\(indexPath.row)")
        
        guard let clsName = vcArray?[indexPath.row]["className"],
            let title = vcArray?[indexPath.row]["title"],
            let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type else {
                print("读取类错误")
                return
        }
        
        let vc = cls.init()
        vc.title = title
        
        navigationController?.pushViewController(vc, animated: true)
         
    }
    
}

