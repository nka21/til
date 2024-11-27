//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime: Int = 0
    var secondsPassed: Int = 0
    
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        // タップする度に、タイマーをリセット
        timer.invalidate()
        progressBar.progress = 0.0
        secondsPassed = 0
        
        // 選択した硬さの時間を表示,設定
        totalTime = eggTimes[hardness]!
        titleLabel.text = "\(hardness) 秒"
        
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(updateTimer),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc func updateTimer() {
        if secondsPassed <= totalTime {
            // 100に対しての現在値で割ることで%計算
            let percentageProgress = (Double(secondsPassed) / Double(totalTime))
            progressBar.progress = Float(percentageProgress)
            secondsPassed += 1
            
            print(percentageProgress)
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
            // TODO: タイマーが終了したらアラーム音を再生
            playSound(soundName: "alarm_sound")
            
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}
