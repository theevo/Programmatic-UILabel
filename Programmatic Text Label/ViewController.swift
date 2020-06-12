//
//  ViewController.swift
//  Programmatic Text Label
//
//  Created by Theo Vora on 6/11/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let height: CGFloat = 35
    let width: CGFloat = 105
    var xOffset: CGFloat {
        return -width / 2
    }
    var viewCenter: CGPoint = CGPoint(x: 100, y: 100)
    var center: CGPoint {
        get {
            return CGPoint(x: self.viewCenter.x + xOffset, y: self.viewCenter.y)
        }
    }
    var box: CGRect {
        get {
            return CGRect(origin: self.center, size: CGSize(width: self.width, height: self.height))
        }
    }
    
    var helloLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewCenter = view.center
        
        buildLabel()
        
        guard let label = helloLabel else { return }
        
        view.addSubview(label)
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(buhBye))
        gestureRecognizer.numberOfTapsRequired = 1
        label.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func buhBye() {
        guard let label = helloLabel else { return }
        label.removeFromSuperview()
        helloLabel = nil
    }
    
    func buildLabel() {
        let label = UILabel(frame: box)
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Courier", size: CGFloat(integerLiteral: 15)), size: CGFloat(integerLiteral: 15))
        label.text = "Hello world"
        label.layer.borderColor = UIColor.systemPink.cgColor
        label.layer.borderWidth = 2.0
        label.isUserInteractionEnabled = true
        helloLabel = label
    }


}

