//
//  ViewControllerQuiz.swift
//  Chemical_Story
//
//  Created by 熊谷寿毅哉 on 2018/03/01.
//  Copyright © 2018年 jukkey5memory. All rights reserved.
//

import UIKit

class ViewControllerQuiz: UIViewController {

    @IBOutlet weak var numnum: UILabel!
    @IBOutlet weak var queque: UITextView!
    @IBOutlet weak var leftup: UIButton!
    @IBOutlet weak var rightup: UIButton!
    @IBOutlet weak var leftdown: UIButton!
    @IBOutlet weak var rightdown: UIButton!
    @IBOutlet weak var nexter: UIButton!
    
    var count = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        queque.isHidden = true
        numnum.isHidden = true
        rightup.isHidden = true
        leftdown.isHidden = true
        rightdown.isHidden = true
        leftup.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func counter(_ sender: Any) {
        count = count + 1
        if(count==1){
            queque.isHidden = true
            numnum.isHidden = true
            rightup.isHidden = true
            leftdown.isHidden = true
            rightdown.isHidden = true
            leftup.isHidden = true
            
            queque.text = ""
            
            
        }
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
