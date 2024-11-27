//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by nk21 on 2024/11/05.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

// クイズの質問を表現する構造体
struct Question {
    // 質問文
    let text: String
    // 選択肢の配列
    let answer: [String]
    // 正しい回答
    let correctAnswer: String
    
    // イニシャライザ（構造体の初期化を行う）
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q                 // 質問文の設定
        self.answer = a               // 選択肢の設定
        self.correctAnswer = correctAnswer // 正解の設定
    }
}
