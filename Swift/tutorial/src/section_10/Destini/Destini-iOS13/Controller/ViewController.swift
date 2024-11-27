//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var storyLabel: UILabel! // ストーリーのタイトルを表示するラベル
    @IBOutlet weak var choice1Button: UIButton! // 選択肢1のボタン
    @IBOutlet weak var choice2Button: UIButton! // 選択肢2のボタン
    
    // MARK: - Properties
    var storyBrain = StoryBrain() // ストーリーのロジックを管理するインスタンス
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // UIの初期更新
        updateUI()
    }
    
    // MARK: - IBActions
    /// ユーザーが選択肢ボタンを押したときに呼ばれるアクション
    @IBAction func choiceMade(_ sender: UIButton) {
        // 選択されたボタンのタイトルを基に次のストーリーに進む
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        // UIを更新して新しいストーリーを表示
        updateUI()
    }
    
    // MARK: - Helper Methods
    /// UIの内容を更新するメソッド
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle() // ストーリーのタイトルを更新
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal) // 選択肢1のテキストを更新
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal) // 選択肢2のテキストを更新
    }
}
