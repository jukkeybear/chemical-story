//
//  ViewControllerDangeon.swift
//  Chemical_Story
//
//  Created by 熊谷寿毅哉 on 2018/02/20.
//  Copyright © 2018年 jukkey5memory. All rights reserved.
//

import UIKit

class ViewControllerDangeon: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var serif: UITextView!
    @IBOutlet weak var question: UIImageView!
    @IBOutlet weak var deta: UITextView!
    @IBOutlet weak var lh: UIButton!
    @IBOutlet weak var mh: UIButton!
    @IBOutlet weak var rh: UIButton!
    @IBOutlet weak var lm: UIButton!
    @IBOutlet weak var mm: UIButton!
    @IBOutlet weak var rm: UIButton!
    @IBOutlet weak var ll: UIButton!
    @IBOutlet weak var ml: UIButton!
    @IBOutlet weak var rl: UIButton!
    @IBOutlet weak var go: UIButton!
    @IBOutlet weak var three_three: UIImageView!

    @IBOutlet weak var kagou: UILabel!
    @IBOutlet weak var genso1: UILabel!
    @IBOutlet weak var genso2: UILabel!


    @IBOutlet weak var gameovergo: UIButton!
    
    @IBOutlet weak var one: UIImageView!
    @IBOutlet weak var two: UIImageView!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var plus: UILabel!
    @IBOutlet weak var home: UIButton!
    
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var back: UIButton!
    
    
    var num = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        genso1.isHidden = true
        genso2.isHidden = true
        kagou.isHidden = true
        one.isHidden = true
        two.isHidden = true
        answer.isHidden = true
        plus.isHidden = true
        
        lh.isHidden = true
        mh.isHidden = true
        rh.isHidden = true
        lm.isHidden = true
        mm.isHidden = true
        rm.isHidden = true
        ll.isHidden = true
        ml.isHidden = true
        rl.isHidden = true
        deta.isHidden = true
        deta.layer.borderWidth = 1.0
        deta.layer.borderColor = UIColor.gray.cgColor
        deta.layer.cornerRadius = 6.0

        serif.isHidden = true
        serif.layer.borderWidth = 1.0
        serif.layer.borderColor = UIColor.gray.cgColor
        serif.layer.cornerRadius = 6.0
        serif.isEditable = false
        
        three_three.isHidden = true
        name.isHidden = true
        name.layer.borderWidth = 1.0
        name.layer.borderColor = UIColor.gray.cgColor
        name.layer.cornerRadius = 6.0
        message.isHidden = true
        question.isHidden = true
        
        gameovergo.isHidden = true
        home.isHidden = true
        back.isHidden = true
 
        // Do any additional setup after loading the view.
    }
    @IBAction func go(_ sender: Any) {
        num = num + 1

        if(num==1){
            name.isHidden = false
            name.text = "レオナルド"
            serif.text = "とにかくこの洞窟から脱出するぞ！"
            serif.isHidden = false
        }
        if(num==2){
            name.text = "レオナルド"
            serif.text = "なっ！壁で封鎖されている！\nこの質感、この色合い、これは鉄か！"
            question.isHidden = false
        }
        if(num==3){
            name.text = "ミッション"
            serif.text = "鉄壁を塩酸を錬成し、酸化により溶かして進め"
            three_three.isHidden = false
            genso1.isHidden = false
            genso2.isHidden = false
           kagou.isHidden = false
            answer.isHidden = false
            plus.isHidden = false
            
            lh.isHidden = false
            mh.isHidden = false
            rh.isHidden = false
            lm.isHidden = false
            mm.isHidden = false
            rm.isHidden = false
            ll.isHidden = false
            ml.isHidden = false
            rl.isHidden = false
            deta.isHidden = false
            deta.text = "[鉄(Fe)の壁]\n光反応により塩酸を錬成\n必要な環境や割合は無視してよい"
            one.isHidden = false
            message.isHidden = false
            message.text = "一つ目の反応物を選択せよ"
        }
        if(num==4){
            message.text = "二つ目の反応物を選択せよ"
            one.isHidden = true
            two.isHidden = false
            
        }
        if(num==5){
            message.text = "この組み合わせで錬成しますか？"
            back.isHidden = false
            two.isHidden = true
        }
        if(num==6){
            back.isHidden = true
        if((genso1.text=="H2"&&genso2.text=="Cl2"&&num==6)||(genso1.text=="Cl2"&&genso2.text=="H2"&&num==6)){
            answer.text = "2HCl"
            num = 10
            
            }
            else{
            message.text = "GAME OVER"
            gameovergo.isHidden = false
            go.isHidden = true
           
            }
        }
        if(num==11){
            name.text = "レオナルド"
            serif.text = "壁が溶けたぞ！\nそれにしてもこんな環境で化合物をその場で錬成·····\n君はいったい····。"
            three_three.isHidden = true
            genso1.text = "Fe"
            genso2.text = "2HCl"
            one.isHidden = true
            two.isHidden = true
            answer.text = "FeCl2 + H2"
            
            lh.isHidden = true
            mh.isHidden = true
            rh.isHidden = true
            lm.isHidden = true
            mm.isHidden = true
            rm.isHidden = true
            ll.isHidden = true
            ml.isHidden = true
            rl.isHidden = true
            deta.isHidden = true
            question.isHidden = true
            message.isHidden = true
        }
        if(num==12){
            name.text = "レオナルド"
            serif.text = "待て！！何かおかしい\n淡い黄色の液体の壁があるように見える···(ジュゥゥゥ）"
            genso1.isHidden = true
            genso2.isHidden = true
            plus.isHidden = true
            kagou.isHidden = true
            answer.isHidden = true
        }
        if(num==13){
            name.text = "レオナルド"
            serif.text = "痛ッ！この感触···塩酸か！\nダメだ。こんなとこ通ったら大火傷してしまう。"
        }
  
        if(num==14){
            name.text = "ミッション"
            serif.text = "水酸化ナトリウム水溶液を錬成し、壁を中和せよ"
            three_three.isHidden = false
            genso1.isHidden = false
            genso2.isHidden = false
            kagou.isHidden = false
            answer.isHidden = false
            plus.isHidden = false
            
            lh.isHidden = false
            mh.isHidden = false
            rh.isHidden = false
            lm.isHidden = false
            mm.isHidden = false
            rm.isHidden = false
            ll.isHidden = false
            ml.isHidden = false
            rl.isHidden = false
            deta.isHidden = false
            genso1.text = "反応物１"
            genso2.text = "反応物２"
            answer.text = "???"
            deta.text = "[塩酸(HCl)の壁]\n酸性の水溶液。\n強酸のため人体に有害。\n触れると火傷を起こし、目に入ると最悪、失明の可能性も。"
            one.isHidden = false
            message.isHidden = false
            message.text = "一つ目の反応物を選択せよ"
            lh.setTitle("Na", for: .normal)
            mh.setTitle("2Na", for: .normal)
            rh.setTitle("Na2", for: .normal)
            lm.setTitle("O2", for: .normal)
            mm.setTitle("H2", for: .normal)
            rm.setTitle("H2O", for: .normal)
            ll.setTitle("2H2O", for: .normal)
            ml.setTitle("OH", for: .normal)
            rl.setTitle("2OH", for: .normal)
        }
        if(num==15){
            message.text = "二つ目の反応物を選択せよ"
            one.isHidden = true
            two.isHidden = false
            
        }
        if(num==16){
            message.text = "この組み合わせで錬成しますか？"
            back.isHidden = false
            two.isHidden = true
        }
        if(num==17){
            back.isHidden = true
        if((genso1.text=="2Na"&&genso2.text=="2H2O"&&num==17)||(genso1.text=="2H2O"&&genso2.text=="2Na"&&num==17)){
            answer.text = "2NaOH + H2"
            num = 20
            
        }
        else{
            message.text = "GAME OVER"
            gameovergo.isHidden = false
            go.isHidden = true
            }
    }
        if(num==21){
            name.text = "レオナルド"
            serif.text = "よし！水酸化ナトリウムと塩酸が反応して塩と水に変わった！\nこれで進めるぞ！"
            three_three.isHidden = true
            genso1.text = "NaOH"
            genso2.text = "HCl"
            one.isHidden = true
            two.isHidden = true
            answer.text = "NaCl + H2O"
            message.isHidden = true
            
            
            lh.isHidden = true
            mh.isHidden = true
            rh.isHidden = true
            lm.isHidden = true
            mm.isHidden = true
            rm.isHidden = true
            ll.isHidden = true
            ml.isHidden = true
            rl.isHidden = true
            deta.isHidden = true
            question.isHidden = true
        }
        if(num==22){
            name.text = "レオナルド"
            serif.text = "止まれ···静かに。\nこの先に僕たちを襲った奴らがいるようだ。"
            genso1.isHidden = true
            genso2.isHidden = true
            answer.isHidden = true
            plus.isHidden = true
            kagou.isHidden = true
        }
        if(num==23){
            name.text = "レオナルド"
            serif.text = "クソ、どうするか····"
        }
        if(num==24){
            name.text = "レオナルド"
            serif.text = "そうだ！まだ塩酸はあるな？\nちょうど薬品を持っていたんだ。"
            question.image = UIImage(named: "bottle.jpg")
            question.isHidden = false
        }
        if(num==25){
            name.text = "レオナルド"
            serif.text = "これはアンモニアさ。\nまぁ見ていてくれ。"
            
            genso1.isHidden = false
            genso2.isHidden = false
            kagou.isHidden = false
            answer.isHidden = false
            plus.isHidden = false
            genso1.text = "反応物１"
            genso2.text = "反応物２"
            answer.text = "???"
        }
        if(num==26){
            name.text = "レオナルド"
            serif.text = "反応！"
            genso1.text = "HCl"
            genso2.text = "NH"
            answer.text = "NH4Cl"
        }
        if(num==27){
            name.text = "NH4Cl"
            serif.text = "モアモアモア〜"
            genso1.isHidden = true
            genso2.isHidden = true
            kagou.isHidden = true
            one.isHidden = true
            two.isHidden = true
            answer.isHidden = true
            plus.isHidden = true
            
            lh.isHidden = true
            mh.isHidden = true
            rh.isHidden = true
            lm.isHidden = true
            mm.isHidden = true
            rm.isHidden = true
            ll.isHidden = true
            ml.isHidden = true
            rl.isHidden = true
            deta.isHidden = true
            question.isHidden = true
        }
        if(num==28){
            name.text = "レオナルド"
            serif.text = "そうさ、塩酸とアンモニアを混ぜて、\n塩化アンモニウムを作ったのさ。"
        }
        if(num==29){
            name.text = "レオナルド"
            serif.text = "この白煙できっと···\nうまくいったみたいだね。"
        }
        if(num==30){
            name.text = "レオナルド"
            serif.text = "僕たちが焼死して、\n壁の隙間から煙が漏れ出てきたと勘違いしてくれたようだ。"
        }
        if(num==31){
            name.text = "レオナルド"
            serif.text = "塩化アンモニウムは無毒だけど、燃焼による煙は有毒だからね。\nしばらくしたらやつらもここを離れるだろう。"
        }
        if(num==32){
            name.text = ""
            serif.text = "　　　　　　　　　　　　　数十分後"
        }
        if(num==33){
            name.text = "レオナルド"
            serif.text = "さあ、もういいだろう。\nここから脱出するとしよう。"
        }
        if(num==34){
            name.text = ""
            serif.text = "\n　　         　　　　　　　　        CLEAR!"
            background.image = UIImage(named : "carve.jpg")
            go.isHidden = true
            home.isHidden = false
        }
        
    }
    @IBAction func back(_ sender: Any) {
        genso1.text = "反応物１"
        genso2.text = "反応物２"
        message.text = "一つ目の反応物を選択せよ"
        one.isHidden = false
        two.isHidden = true
        if(num==5){
            num = 3
        }
        if(num==16){
            num = 14
        }
    }
    
    @IBAction func lh(_ sender: Any) {
        if(num==3){
            genso1.text = "H"
        }
        if(num==4){
            genso2.text = "H"
        }
        
        if(num==14){
            genso1.text = "Na"
        }
        if(num==15){
            genso2.text = "Na"
        }
    }
    
    @IBAction func ch(_ sender: Any) {
        if(num==3){
            genso1.text = "H2"
        }
        if(num==4){
            genso2.text = "H2"
        }
        
        if(num==14){
            genso1.text = "2Na"
        }
        if(num==15){
            genso2.text = "2Na"
        }
    }
    
    @IBAction func rh(_ sender: Any) {
        if(num==3){
            genso1.text = "C"
        }
        if(num==4){
            genso2.text = "C"
        }
        
        if(num==14){
            genso1.text = "Na2"
        }
        if(num==15){
            genso2.text = "Na2"
        }
    }
    @IBAction func lc(_ sender: Any) {
        if(num==3){
            genso1.text = "Cl"
        }
        if(num==4){
            genso2.text = "Cl"
        }
        
        if(num==14){
            genso1.text = "O2"
        }
        if(num==15){
            genso2.text = "O2"
        }
    }
    @IBAction func cc(_ sender: Any) {
        if(num==3){
            genso1.text = "Cl2"
        }
        if(num==4){
            genso2.text = "Cl2"
        }
        
        if(num==14){
            genso1.text = "H2"
        }
        if(num==15){
            genso2.text = "H2"
        }
    }
    
    @IBAction func rc(_ sender: Any) {
        if(num==3){
            genso1.text = "F2"
        }
        if(num==4){
            genso2.text = "F2"
        }
        
        if(num==14){
            genso1.text = "H2O"
        }
        if(num==15){
            genso2.text = "H2O"
        }
    }
    @IBAction func ll(_ sender: Any) {
        if(num==3){
            genso1.text = "O"
        }
        if(num==4){
            genso2.text = "O"
        }
        
        if(num==14){
            genso1.text = "2H2O"
        }
        if(num==15){
            genso2.text = "2H2O"
        }
    }
 
    @IBAction func cl(_ sender: Any) {
        if(num==3){
            genso1.text = "O2"
        }
        if(num==4){
            genso2.text = "O2"
        }
        
        if(num==14){
            genso1.text = "OH"
        }
        if(num==15){
            genso2.text = "OH"
        }
    }
    
    @IBAction func rl(_ sender: Any) {
        if(num==3){
            genso1.text = "Na"
        }
        if(num==4){
            genso2.text = "Na"
        }
        
        if(num==14){
            genso1.text = "2OH"
        }
        if(num==15){
            genso2.text = "2OH"
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
