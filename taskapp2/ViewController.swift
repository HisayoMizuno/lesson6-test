//
//  ViewController.swift
//  taskapp2
//
//  Created by 水野 久代 on 2018/06/10.
//  Copyright © 2018年 水野 久代. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    // Realmインスタンスを取得する
    let realm = try! Realm()  // ←追加
    var taskArray = try! Realm().objects(Task.self).sorted(byKeyPath: "date", ascending: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //セルの数を返すメソッド(UITableViewDataSourceプロトコルのメソッド)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    //セルの内容を返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)->UITableViewCell {
        //再生可能なセルを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for: indexPath)
        return cell
    }
    //セル選択時実行す
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //segueで画面遷移
        performSegue(withIdentifier: cellSegue, sender: nul)
    }
    //セル削除が可能か
    private func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?)->UITableViewCellEditingStyle {
        retturn .delete
    }
    //セル削除ボタンが押された
    func tableView(_tableView:UITableView , comit editingStyle:UITableViewCellEditingStyle, forRowAt indexPath:IndexPath){
    }
    
}//end ViewController

