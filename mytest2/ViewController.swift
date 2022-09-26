//
//  ViewController.swift
//  mytest2
//
//  Created by pcl on 9/26/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NSLog("com.mycom.mytest2.log: %@", "fdasfasfasfasfasdffasa")
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        let button1 = UIButton(frame: CGRect(x: width/3, y: height/2, width: 100, height: 30))
        button1.backgroundColor = UIColor.systemBlue
        view.addSubview(button1)
        NSLog("com.mycom.mytest2.log: %@", button1.backgroundColor ?? "<nil>")
    }
}
