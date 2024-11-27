//
//  Story.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

/// ストーリー構造体: 各ストーリーのタイトルと選択肢を保持
struct Story {
    let title: String // ストーリーのタイトル
    let choice1: String // 選択肢1のテキスト
    let choice1Destination: Int // 選択肢1を選んだ際の遷移先
    let choice2: String // 選択肢2のテキスト
    let choice2Destination: Int // 選択肢2を選んだ際の遷移先
    
    /// イニシャライザ: 各ストーリーのプロパティを設定
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
    }
}
