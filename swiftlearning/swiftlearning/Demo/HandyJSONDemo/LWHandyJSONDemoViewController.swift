//
//  LWHandyJSONDemoViewController.swift
//  swiftlearning
//
//  Created by liuwei on 2019/11/29.
//  Copyright © 2019 liuwei. All rights reserved.
//

import UIKit
import HandyJSON

struct BasicTypes: HandyJSON {
    var int: Int = 2
    var doubleOptional: Double?
    var stringImplicitlyUnwrapped: String!
}

class LWHandyJSONDemoViewController: LWViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        demo1()
    }
    
    private func demo1() {
        let jsonString = "{\"doubleOptional\":1.1,\"stringImplicitlyUnwrapped\":\"hello\",\"int\":1}"
        
        guard let object = BasicTypes.deserialize(from: jsonString) else {
            print("解析错误")
            return
        }
        
        print(object)
    }

}
