//
//  ViewController.swift
//  segmentedControl
//
//  Created by Kobayashi Yako on 2017/10/28.
//  Copyright © 2017年 Step App School. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var speak:AVSpeechSynthesizer = AVSpeechSynthesizer()

    @IBOutlet var segHelloType: UISegmentedControl!
    @IBOutlet var labelHello: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //あいさつボタンを押した場合の処理
    @IBAction func tapHello(_ sender: Any) {
        if(segHelloType.selectedSegmentIndex == 0) {
            labelHello.text = "おはようございます"
        }
        else if(segHelloType.selectedSegmentIndex == 1) {
            labelHello.text = "こんにちは"
        }
        else if(segHelloType.selectedSegmentIndex == 2) {
            labelHello.text = "こんばんは"
        }
        //スピーチ機能を呼び出す
        let content = AVSpeechUtterance(string: labelHello.text!)
        content.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        self.speak.speak (content)
    }
    
}

