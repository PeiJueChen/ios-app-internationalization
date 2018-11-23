//
//  ViewController.swift
//  internationalizationTest
//
//  Created by 陈培爵 on 2018/11/23.
//  Copyright © 2018年 PeiJueChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        l1.text = NSLocalizedString("label1", comment: "")
    }

}

