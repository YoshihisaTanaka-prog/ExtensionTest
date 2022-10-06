//
//  Extensions.swift
//  ExtensionTest
//
//  Created by 田中義久 on 2022/10/05.
//

import UIKit

extension Int{
//    String(hoge)をhoge.sでもできるようにする
    var s: String{
        return String(self)
    }
//    Double(hoge)をhoge.dでもできるようにする
    var d: Double{
        return Double(self)
    }
//    CGFloat(hoge)をhoge.cgでもできるようにする
    var cg: CGFloat{
        return CGFloat(self)
    }
}

extension Double{
//    String(hoge)をhoge.sでもできるようにする
    var s: String{
        return String(self)
    }
//    String(format: "%.2f", hoge)などをhoge.s("%.2f")などでもできるようにする
    func s(_ format: String) -> String{
        return String(format: format, self)
    }
//    Int(hoge)をhoge.iでもできるようにする
    var i: Int{
        return Int(self)
    }
//    CGFloat(hoge)をhoge.cgでもできるようにする
    var cg: CGFloat{
        return CGFloat(self)
    }
}

extension String{
    var i: Int?{
        return Int(self)
    }
    
    var d: Double?{
        return Double(self)
    }
}

extension UIViewController{
    func showAlert(title: String?, message: String?, actionDictionary: Dictionary<String, () -> Void >){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for elem in actionDictionary{
            let key = elem.key
            let function = elem.value
            let action = UIAlertAction(title: key, style: .default) { (action: UIAlertAction) in
                function()
            }
            alert.addAction(action)
        }
        present(alert,animated: true, completion: nil)
    }
    
    func showCancelAlert(title: String?, message: String?, actionDictionary: Dictionary<String, () -> Void >, canceledFunc: @escaping () -> Void){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for elem in actionDictionary{
            let key = elem.key
            let function = elem.value
            let action = UIAlertAction(title: key, style: .default) { _ in
                function()
            }
            alert.addAction(action)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            canceledFunc()
        }
        alert.addAction(cancelAction)
        present(alert,animated: true, completion: nil)
    }
    
    func showMessageAlert(title: String?, message: String?){
        showAlert(title: title, message: message, actionDictionary: ["OK": {}])
    }
    
    func showOkAlert(title: String?, message: String?, okFunc: @escaping () -> Void){
        showAlert(title: title, message: message, actionDictionary: ["OK": okFunc])
    }
    
    func showOkCancelAlert(title: String?, message: String?, okFunc: @escaping () -> Void, canceledFunc: @escaping () -> Void){
        showCancelAlert(title: title, message: message, actionDictionary: ["OK": okFunc], canceledFunc: canceledFunc)
    }
    
    
    
}
