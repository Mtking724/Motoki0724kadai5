//
//  ViewController.swift
//  Motoki0724kadai4
//
//  Created by Motoki Okayasu on 2023/06/18.
//

import UIKit

class ViewController: UIViewController {
    
    //textField,labelを接続する（privateを使ってみる)
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label: UILabel!
    
    //culculatedButtonを接続する
    @IBAction func culculatedButton(_ sender: Any) {
        //定数value1,2にtextField1,2を代入。Int型に変換する。
        let value1 = Int(textField1.text ?? "" ) ?? 0
        let value2 = Int(textField2.text ?? "" ) ?? 0
        
        //定数culculatedResultにFloat型の割り算結果を代入する
        let culculatedResult = Float(value1) / Float(value2)
        //labelに割り算の結果を表示する
        label.text = String(culculatedResult)
        
        //TF1が空の時alert1を表示
        if textField1.text == "" {
            presentAlert(message: "割られる数を入力してください")
            return
        }
        
        //TF2が空の時alert2を表示
        if textField2.text == "" {
            presentAlert(message: "割る数を入力してください")
            return
        }
        
        //TF2に0が入力され計算された時、alert3を表示
        if value2 == 0 {
            presentAlert(message: "割る数には0を入力しないでください")
            return
        }
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message,  preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}
