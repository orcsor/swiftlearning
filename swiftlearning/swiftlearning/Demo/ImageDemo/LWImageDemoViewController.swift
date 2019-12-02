//
//  LWImageDemoViewController.swift
//  swiftlearning
//
//  Created by liuwei on 2019/12/2.
//  Copyright © 2019 liuwei. All rights reserved.
//

import UIKit

class LWImageDemoViewController: LWViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let rect = CGRect(x: 0, y: 0, width: 160, height: 160)
        let imageView = UIImageView(frame: rect)
         
        imageView.center = view.center
        let image = UIImage(named: "header")
        
        imageView.image = avatarImage(image: image!, size: rect.size, backColor: view.backgroundColor)
        
        view.addSubview(imageView)
       
    }
    
 
    private func avatarImage(image: UIImage, size: CGSize, backColor: UIColor?) -> UIImage? {
        
        let rect = CGRect(origin: CGPoint(), size: size)
        
        // 图像上下文
        // 1 size: 绘图尺寸
        // 2. 不透明
        // 3. scale 默认使用1.0分辨率，图像质量不好
        // 可以指定0 使用当前设备分辨率
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 0)
        
        // 填充背景色
        backColor?.setFill()
        UIRectFill(rect)
        
        // 绘制选型路径
        let path = UIBezierPath(ovalIn: rect)
        // 裁剪
        path.addClip()
        
        // 绘制指定区域
        image.draw(in: rect)
        
        UIColor.darkGray.setStroke()
        path.stroke()
        
        // 取得绘制结果
        let result = UIGraphicsGetImageFromCurrentImageContext()
        
        // 关闭上下文
        UIGraphicsEndImageContext()
        
        return result
    }

}
