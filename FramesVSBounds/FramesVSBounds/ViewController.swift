//
//  ViewController.swift
//  FramesVSBounds
//
//  Created by 孟軒蕭 on 11/04/2017.
//  Copyright © 2017 MichaelXiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    let customView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("BlueViewframe:\t X:\(blueView.frame.origin.x)\t Y:\(blueView.frame.origin.y)\t Width: \(blueView.frame.size.width)\t Height:\(blueView.frame.size.height)")
        
        setUpCustomView()
    }
    
    func setUpCustomView() {
        blueView.addSubview(customView)
        customView.backgroundColor = UIColor.brown
        print("customViewframe:\t X:\(customView.frame.origin.x)\t Y:\(customView.frame.origin.y)\t Width: \(customView.frame.size.width)\t Height:\(customView.frame.size.height)")
        blueView.bounds.origin = CGPoint(x: -10, y: -10)
        print("blueViewbounds:\t X:\(blueView.bounds.origin.x)\t Y:\(blueView.bounds.origin.y)\t Width:\(blueView.bounds.size.width)\t Height:\(blueView.bounds.size.height)")
    }
    
}

