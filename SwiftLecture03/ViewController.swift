//
//  ViewController.swift
//  SwiftLecture03
//
//  Created by stu1 on 2018/7/22.
//  Copyright © 2018年 stu1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbName: UILabel!

    
    @IBOutlet weak var touchViewer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnConfirmClicked(_ sender: Any) {
        lbName.text="zyouking"
        
        let button=sender as! UIButton
        button.setTitle("OK", for: UIControl.State.normal)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
        if let touch=touches.first{
            let loc=touch.location(in: self.touchViewer)
            print("\(loc)")
            if(self.touchViewer.frame.contains(loc)){
                self.touchViewer.backgroundColor=UIColor.red
            }else{
                self.touchViewer.backgroundColor=UIColor.blue
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
    
    
}

