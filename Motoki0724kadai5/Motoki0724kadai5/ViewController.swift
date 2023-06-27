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
        
        //alertの表示内容を定義する
        let title = "課題5"
        let message1 = "割られる数を入力してください"
        let message2 = "割る数を入力してください"
        let message3 = "割る数には0を入力しないでください"
        
        //定数alertにUIAlertControllerを代入
        let alert1 = UIAlertController(title: title, message: message1,  preferredStyle: .alert)
            
        let alert2 = UIAlertController(title: title, message: message2,  preferredStyle: .alert)
            
        let alert3 = UIAlertController(title: title, message: message3, preferredStyle: .alert)
            
        //OKボタンを作成
        let ok = UIAlertAction(title: "OK", style: .default, handler: {action in print("OK")})
        alert1.addAction(ok)
        alert2.addAction(ok)
        alert3.addAction(ok)
        
        //TF1が空の時alert1を表示
        if textField1.text == "" {
            present(alert1, animated: true, completion: nil)
        }
        
        //TF2が空の時alert2を表示
        if textField2.text == "" {
            present(alert2, animated: true, completion: nil)
        }
        
        //TF2に0が入力され計算された時、alert3を表示
        if value2 == 0 {
            present(alert3, animated: true, completion: nil)
            
            }
        }
    }
    

    
    
    
    


