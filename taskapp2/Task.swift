//
//  Task.swift
//  taskapp2
//
//  Created by 水野 久代 on 2018/06/10.
//  Copyright © 2018年 水野 久代. All rights reserved.
//

import RealmSwift
class Task: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0
    
    // タイトル
    @objc dynamic var title = ""
    
    // 内容
    @objc dynamic var contents = ""
    
    /// 日時
    @objc dynamic var date = Date()
    
    /**
     id をプライマリーキーとして設定
     */
    override static func primaryKey() -> String? {
        return "id"
    }
}
