//
//  ViewController.swift
//  Programmatic Text Label
//
//  Created by Theo Vora on 6/11/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width: CGFloat = 105
        let xOffset: CGFloat = -width / 2
        let height: CGFloat = 35
        
        var center = view.center
        center.x = center.x + xOffset
        
        label = UILabel(frame: CGRect(origin: center, size: CGSize(width: width, height: height)))
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Courier", size: CGFloat(integerLiteral: 15)), size: CGFloat(integerLiteral: 15))
        label.text = "Hello world"
        label.layer.borderColor = UIColor.systemPink.cgColor
        label.layer.borderWidth = 2.0
        label.isUserInteractionEnabled = true
        view.addSubview(label)
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(buhBye))
        gestureRecognizer.numberOfTapsRequired = 1
        label.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func buhBye() {
        label.removeFromSuperview()
        label = nil
    }


}

