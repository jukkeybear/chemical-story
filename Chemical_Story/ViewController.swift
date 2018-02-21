//
//  ViewController.swift
//  Chemical_Story
//
//  Created by 熊谷寿毅哉 on 2018/01/24.
//  Copyright © 2018年 jukkey5memory. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {


         var audioPlayer: AVAudioPlayer!
         var audioPlayer2: AVAudioPlayer!
    
    override func viewDidLoad() {
        
        do {
            let filePath = Bundle.main.path(forResource: "title_bgm",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer = try AVAudioPlayer(contentsOf: musicPath)
        } catch {
            print("error")
        }
        audioPlayer.play()
        do {
            let filePath = Bundle.main.path(forResource: "start_effect",ofType: "mp3")
            let musicPath2 = URL(fileURLWithPath: filePath!)
            audioPlayer2 = try AVAudioPlayer(contentsOf: musicPath2)
        } catch {
            print("error")
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func start(_ sender: Any) {
        audioPlayer.pause()
        audioPlayer2.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

