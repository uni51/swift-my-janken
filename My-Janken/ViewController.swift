//
//  ViewController.swift
//  My-Janken
//
//  Created by STARBOARD on 2019/05/17.
//  Copyright © 2019年 omokaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    // じゃんけん（数字）
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        // 新しいじゃんけんの結果を一時的に格納する変数を設ける
        var newAnswerNumber = Int(arc4random_uniform(3))
        
        repeat {
            newAnswerNumber = Int(arc4random_uniform(3))
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            // グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named:"gu")
        } else if answerNumber == 1 {
            // チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
        } else if answerNumber == 2 {
            // パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
        }

    }
    
}

