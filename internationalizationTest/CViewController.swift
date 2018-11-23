//
//  CViewController.swift
//  internationalization
//
//  Created by 陈培爵 on 2018/11/23.
//  Copyright © 2018年 PeiJueChen. All rights reserved.
//

import UIKit

class CViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var l: UILabel!
    private let currentLang = AppSettings.shared.language
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        l.text = NSLocalizedString("testLabelfromChange", comment: "")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        if (currentLang != AppSettings.shared.language) {
            resetRootViewController()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func enChange(_ sender: Any) {
        AppSettings.shared.language = .English
        l.text = NSLocalizedString("testLabelfromChange", comment: "")
    }


    func resetRootViewController() {
        if let appdelegate = UIApplication.shared.delegate {
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            if let mainController = storyBoard.instantiateViewController(withIdentifier: "rootViewController") as? UINavigationController {
                appdelegate.window??.rootViewController = mainController

            }
        }
    }
    // zh change
    @IBAction func change(_ sender: UIButton) {
        AppSettings.shared.language = .Chinese
        l.text = NSLocalizedString("testLabelfromChange", comment: "")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
