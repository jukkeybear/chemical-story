//
//  ViewControllerMenu.swift
//  Chemical_Story
//
//  Created by 熊谷寿毅哉 on 2018/02/13.
//  Copyright © 2018年 jukkey5memory. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerMenu: UIViewController {

    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var story: UIButton!
    @IBOutlet weak var custom: UIButton!
    @IBOutlet weak var collection: UIButton!
    @IBOutlet weak var shop: UIButton!
    @IBOutlet weak var setting: UIButton!
    @IBOutlet weak var friend: UIButton!
    @IBOutlet weak var mainstory: UIButton!
    @IBOutlet weak var substory: UIButton!
    
     var audioPlayer: AVAudioPlayer!
     var audioPlayer2: AVAudioPlayer!
    override func viewDidLoad() {
        
        do {
            let filePath = Bundle.main.path(forResource: "menu_bgm",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer = try AVAudioPlayer(contentsOf: musicPath)
        } catch {
            print("error")
        }
        audioPlayer.play()
        
        do {
            let filePath = Bundle.main.path(forResource: "menu_effect",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer2 = try AVAudioPlayer(contentsOf: musicPath)
        } catch {
            print("error")
        }
        
        super.viewDidLoad()
        
        
        home.layer.borderWidth = 2.0
        home.layer.borderColor = UIColor.gray.cgColor
        home.layer.cornerRadius = 6.0
        
        
        story.layer.borderWidth = 2.0
        story.layer.borderColor = UIColor.gray.cgColor
        story.layer.cornerRadius = 6.0
        
        mainstory.isHidden = true
        substory.isHidden = true
        
        mainstory.layer.borderWidth = 2.0
        mainstory.layer.borderColor = UIColor.blue.cgColor
        mainstory.layer.cornerRadius = 6.0
        
        substory.layer.borderWidth = 2.0
        substory.layer.borderColor = UIColor.blue.cgColor
        substory.layer.cornerRadius = 6.0
        
        
        custom.layer.borderWidth = 2.0
        custom.layer.borderColor = UIColor.gray.cgColor
        custom.layer.cornerRadius = 6.0
        
        
        collection.layer.borderWidth = 2.0
        collection.layer.borderColor = UIColor.gray.cgColor
        collection.layer.cornerRadius = 6.0
        
        
        shop.layer.borderWidth = 2.0
        shop.layer.borderColor = UIColor.gray.cgColor
        shop.layer.cornerRadius = 6.0
        
        
        friend.layer.borderWidth = 2.0
        friend.layer.borderColor = UIColor.gray.cgColor
        friend.layer.cornerRadius = 6.0
        
        
        setting.layer.borderWidth = 2.0
        setting.layer.borderColor = UIColor.gray.cgColor
        setting.layer.cornerRadius = 6.0
        
        // Do any additional setup after loading the view.
        
        home.isHidden = true
        custom.isHidden = true
        collection.isHidden = true
        shop.isHidden = true
        friend.isHidden = true
        setting.isHidden = true
        substory.isHidden = true
    }
    @IBAction func story(_ sender: Any) {
        mainstory.isHidden = false
        substory.isHidden = false
        audioPlayer2.play()
    }
    @IBAction func mainstory(_ sender: Any) {
         audioPlayer.pause()
        audioPlayer2.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
