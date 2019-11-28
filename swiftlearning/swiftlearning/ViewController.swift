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
        
    }
}


// MARK: -
extension ViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = "hello \(indexPath.row)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
}

