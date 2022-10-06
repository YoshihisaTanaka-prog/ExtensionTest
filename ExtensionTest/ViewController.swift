//
//  ViewController.swift
//  ExtensionTest
//
//  Created by 田中義久 on 2022/10/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print(1.s, 1.0.s("%.2f"), "10".i)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showCancelAlert(title: "test", message: "test", actionDictionary: ["ボタンのテキスト": {print("処理内容")}]){
            print("キャンセル時の処理")
        }
    }


}

