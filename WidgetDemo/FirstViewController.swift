//
//  FirstViewController.swift
//  WidgetDemo
//
//  Created by 姚君 on 16/10/31.
//  Copyright © 2016年 certus. All rights reserved.
//

import UIKit
import LocalAuthentication

class FirstViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = NSLocalizedString("first item", comment: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

