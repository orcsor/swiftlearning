//
//  UIScreen+Extenions.swift
//  swiftlearning
//
//  Created by liuwei on 2019/11/28.
//  Copyright © 2019 liuwei. All rights reserved.
//

import UIKit

extension Bundle {
    
    /// 命名空间
    var namespace: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
}
