//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    // クイズロジックを管理するインスタンス
    var quizBrain = QuizBrain()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初回のUI更新
        updateUI()
    }
    
    // MARK: - Actions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // ボタンのタイトルを取得し、選択された回答として扱う
        let selectedAnswer = sender.currentTitle!
        
        // 回答の正誤に応じてボタンの背景色を変更
        if quizBrain.checkAnswer(selectedAnswer) {
            sender.backgroundColor = UIColor.green // 正解時
        } else {
            sender.backgroundColor = UIColor.red   // 不正解時
        }
        
        // 遅延を設けてUIをリセットし、次の問題を表示
        Timer.scheduledTimer(
            timeInterval: 0.2,
            target: self,
            selector: #selector(updateUI),
            userInfo: nil,
            repeats: false
        )
        
        // 次の質問に移行
        quizBrain.nextQuestion()
    }
    
    // MARK: - UI Update Methods
    @objc func updateUI() {
        // 現在の問題文を更新
        questionLabel.text = quizBrain.getQuestionText()
        
        // 各ボタンに選択肢を設定
        let setAnswer = quizBrain.getAnswer()
        choice1.setTitle(setAnswer[0], for: .normal)
        choice2.setTitle(setAnswer[1], for: .normal)
        choice3.setTitle(setAnswer[2], for: .normal)
        
        // プログレスバーとスコアラベルを更新
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        // ボタンの背景色をリセット
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
    }
}
