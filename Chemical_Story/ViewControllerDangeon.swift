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
    
    @IBOutlet weak var keisu1: UILabel!
    @IBOutlet weak var keisu2: UILabel!
    @IBOutlet weak var genso1: UILabel!
    @IBOutlet weak var genso2: UILabel!
    @IBOutlet weak var kazu1: UILabel!
    @IBOutlet weak var kazu2: UILabel!
    @IBOutlet weak var kagou: UIButton!

    @IBOutlet weak var left: UIButton!
    @IBOutlet weak var right: UIButton!
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var plus: UILabel!
    @IBOutlet weak var home: UIButton!
    
    var num = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        keisu1.isHidden = true
        keisu2.isHidden = true
        kazu1.isHidden = true
        kazu2.isHidden = true
        genso1.isHidden = true
        genso2.isHidden = true
        kagou.isHidden = true
        left.isHidden = true
        right.isHidden = true
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

        serif.isHidden = true
        serif.isEditable = false
        
        three_three.isHidden = true
        name.isHidden = true
        
        
        question.isHidden = true
        
        
        home.isHidden = true
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
            serif.text = "鉄壁を酸化して溶かして進め"
            go.isHidden = true
            three_three.isHidden = false
            keisu1.isHidden = false
            keisu2.isHidden = false
            kazu1.isHidden = false
            kazu2.isHidden = false
            genso1.isHidden = false
            genso2.isHidden = false
            kagou.isHidden = false
            left.isHidden = false
            right.isHidden = false
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
            deta.text = "[鉄(Fe)の壁]\n加熱による溶解は不可。\nイオン化傾向から鉄を溶かせ、かつ酸化力が可能な限り低い水溶液を錬成せよ"
        }
        if(num==4){
            one.isHidden = false
        }
        if(num==5){
            one.isHidden = true
            two.isHidden = false
        }
        if(num==6){
            two.isHidden = true
        }
        if(num==11){
            name.text = "レオナルド"
            serif.text = "壁が溶けたぞ！\nそれにしてもこんな環境で化合物の性質を持つものをその場で錬成·····\n君はいったい····。"
            three_three.isHidden = true
            keisu1.isHidden = true
            keisu2.isHidden = true
            kazu1.isHidden = true
            kazu2.isHidden = true
            genso1.isHidden = true
            genso2.isHidden = true
            kagou.isHidden = true
            left.isHidden = true
            right.isHidden = true
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
        if(num==12){
            name.text = "レオナルド"
            serif.text = "待て！！何かおかしい\n無色透明だが、これは水の壁か？(ジュゥゥゥ）"
            
        }
        if(num==13){
            name.text = "レオナルド"
            serif.text = "痛ッ！この感触···水酸化ナトリウムか！\nダメだ。こんなとこ通ったら体が溶けてしまう。"
        }
  
        if(num==14){
            name.text = "ミッション"
            serif.text = "水酸化ナトリウム水溶液の壁を中和して進め。"
            go.isHidden = true
            three_three.isHidden = false
            keisu1.isHidden = false
            keisu2.isHidden = false
            kazu1.isHidden = false
            kazu2.isHidden = false
            genso1.isHidden = false
            genso2.isHidden = false
            kagou.isHidden = false
            left.isHidden = false
            right.isHidden = false
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
            genso1.text = "元素１"
            genso2.text = "元素２"
            answer.text = "???"
            keisu2.text = "?"
            keisu1.text = "?"
            kazu1.text = "?"
            kazu2.text = "?"
            deta.text = "[水酸化ナトリウム水溶液]\nアルカリ（塩基）性の水溶液。\nタンパク質を溶かす性質があるため人体に有害。\n適当な酸性の水溶液と反応させ、中和せよ。"
        }
        if(num==15){
            one.isHidden = false
        }
        if(num==16){
            one.isHidden = true
            two.isHidden = false
        }
        if(num==17){
            two.isHidden = true
            
        }
        if(num==21){
            name.text = "レオナルド"
            serif.text = "よし！水酸化ナトリウムに塩酸が反応して塩と水に変わった！\nこれで進めるぞ！"
            three_three.isHidden = true
            keisu1.isHidden = true
            keisu2.isHidden = true
            kazu1.isHidden = true
            kazu2.isHidden = true
            genso1.isHidden = true
            genso2.isHidden = true
            kagou.isHidden = true
            left.isHidden = true
            right.isHidden = true
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
        if(num==22){
            name.text = "レオナルド"
            serif.text = "止まれ···静かに。\nこの先に僕たちを襲った奴らがいるようだ。"
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
            serif.text = "これはアンモニアさ。\nまぁ見てな。"
            
            keisu1.isHidden = false
            keisu2.isHidden = false
            kazu1.isHidden = false
            kazu2.isHidden = false
            genso1.isHidden = false
            genso2.isHidden = false
            kagou.isHidden = false
            answer.isHidden = false
            plus.isHidden = false
            genso1.text = "元素１"
            genso2.text = "元素２"
            answer.text = "???"
            keisu2.text = "?"
            keisu1.text = "?"
            kazu1.text = "?"
            kazu2.text = "?"
        }
        if(num==26){
            name.text = "レオナルド"
            serif.text = "反応！"
            genso1.text = "HCl"
            genso2.text = "NH"
            answer.text = "NH4Cl"
            keisu2.text = "1"
            keisu1.text = "1"
            kazu1.text = "1"
            kazu2.text = "3"
        }
        if(num==27){
            name.text = "NH4Cl"
            serif.text = "モアモアモア〜"
            keisu1.isHidden = true
            keisu2.isHidden = true
            kazu1.isHidden = true
            kazu2.isHidden = true
            genso1.isHidden = true
            genso2.isHidden = true
            kagou.isHidden = true
            left.isHidden = true
            right.isHidden = true
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
            serif.text = "僕たちが燃え死んで、\n壁の隙間から炎の煙が漏れ出てきたと勘違いしてくれたようだ"
        }
        if(num==31){
            name.text = "レオナルド"
            serif.text = "燃えた時の煙は有毒だからね。\nしばらくここで待機するよ。"
        }
        if(num==32){
            name.text = ""
            serif.text = "　　　　　　　　　　　数十分後"
        }
        if(num==33){
            name.text = "レオナルド"
            serif.text = "さあ、もういいだろう。\nここから脱出するとしよう。"
        }
        if(num==34){
            name.text = ""
            serif.text = "　　　　　　　CLEAR!"
            background.image = UIImage(named : "carve.jpg")
            go.isHidden = true
            home.isHidden = false
        }
        
    }
    @IBAction func countdown(_ sender: Any) {
        num = num - 1
        if(num<=3){
            num = 3
        }
        if(num>=11&&num<=14){
            num = 14
        }
    }
    @IBAction func countup(_ sender: Any) {
        num = num + 1
        if(num>=6&&num<=10){
            num = 6
        }
        if(num>=17&&num<=20){
            num = 17
        }
    }
    @IBAction func h(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "H"
        }
        if(num==5||num==16){
            genso2.text = "H"
        }
    }
    @IBAction func o(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "O"
        }
        if(num==5||num==16){
            genso2.text = "O"
        }
    }
    @IBAction func Na(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "Na"
        }
        if(num==5||num==16){
            genso2.text = "Na"
        }
    }
    @IBAction func Cl(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "Cl"
        }
        if(num==5||num==16){
            genso2.text = "Cl"
        }
    }
    @IBAction func S(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "S"
        }
        if(num==5||num==16){
            genso2.text = "S"
        }
    }
    @IBAction func N(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "N"
        }
        if(num==5||num==16){
            genso2.text = "N"
        }
    }
    @IBAction func Ca(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "Ca"
        }
        if(num==5||num==16){
            genso2.text = "Ca"
        }
    }
    @IBAction func F(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "F"
        }
        if(num==5||num==16){
            genso2.text = "F"
        }
    }
    @IBAction func C(_ sender: Any) {
        if(num==4||num==15){
            genso1.text = "C"
        }
        if(num==5||num==16){
            genso2.text = "C"
        }
    }
    @IBAction func kagou(_ sender: Any) {
        if((genso1.text=="H"&&genso2.text=="Cl"&&num==6)||(genso1.text=="Cl"&&genso2.text=="H"&&num==6)){
            answer.text = "HCl"
            keisu2.text = "1"
            keisu1.text = "1"
            kazu1.text = "1"
            kazu2.text = "1"
            num = 10
            go.isHidden = false
        }
        if((genso1.text=="H"&&genso2.text=="Cl"&&num==17)||(genso1.text=="Cl"&&genso2.text=="H"&&num==17)){
            answer.text = "HCl"
            keisu2.text = "1"
            keisu1.text = "1"
            kazu1.text = "1"
            kazu2.text = "1"
            num = 20
            go.isHidden = false
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
