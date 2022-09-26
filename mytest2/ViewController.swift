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
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++hello fucker")
        NSLog("com.mycom.mytest2.log: %@", "fdasfasfasfasfasdffasa")
        let label = UIButton(frame: .zero)
        NSLog("com.mycom.mytest2.log: %@", label.backgroundColor ?? "<nil>")
    }
}

