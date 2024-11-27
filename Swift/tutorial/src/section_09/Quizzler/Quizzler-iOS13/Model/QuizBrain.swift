//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by nk21 on 2024/11/05.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

// クイズのロジックを管理する構造体
struct QuizBrain {
    
    // クイズの質問と回答を保持する配列
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    // 現在の質問番号を保持
    var questionNumber = 0
    
    // 現在のスコアを保持
    var score = 0
    
    // 回答を確認するメソッド
    mutating func checkAnswer(_ selectedAnswer: String) -> Bool {
        // 選択した回答が正しい場合
        if selectedAnswer == quiz[questionNumber].correctAnswer {
            score += 1 // スコアを加算
            return true
        } else {
            // 間違っている場合
            return false
        }
    }
    
    // 現在の質問テキストを取得するメソッド
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    // 現在の質問の選択肢を取得するメソッド
    func getAnswer() -> [String] {
        return quiz[questionNumber].answer
    }
    
    // クイズの進捗状況を計算するメソッド
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    // 現在のスコアを取得するメソッド
    func getScore() -> Int {
        return score
    }
    
    // 次の質問に進むメソッド
    mutating func nextQuestion() {
        // 質問番号をインクリメント、最後までいったら最初に戻す
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0 // クイズを最初にリセット
            score = 0          // スコアもリセット
        }
    }
}
