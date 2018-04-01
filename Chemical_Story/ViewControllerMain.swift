//
//  ViewControllerMain.swift
//  Chemical_Story
//
//  Created by 熊谷寿毅哉 on 2018/02/13.
//  Copyright © 2018年 jukkey5memory. All rights reserved.
//
//name、性別の受け渡し
import UIKit
import AVFoundation

class ViewControllerMain: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var serif: UITextView!
    @IBOutlet weak var serif_flow: UIButton!
    @IBOutlet weak var you: UIImageView!
    @IBOutlet weak var item: UIButton!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var npc1: UIImageView!
    @IBOutlet weak var yourname: UITextField!
    @IBOutlet weak var male: UIButton!
    @IBOutlet weak var female: UIButton!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var get: UILabel!
    @IBOutlet weak var experiment: UIImageView!
    @IBOutlet weak var go_next: UIButton!
    @IBOutlet weak var finger: UIImageView!
    
    
    
    var num = 0
    var num2 = 0
    var gender = 0
    var gender2 = 0
    var c = ""
    var co = ""
    var k = ""
    var ke = ""
    var you_name = ""
    var you_name2 = ""
    
    
    var audioPlayer: AVAudioPlayer!
    var audioPlayer2: AVAudioPlayer!
    var audioPlayer3: AVAudioPlayer!
    var audioPlayer4: AVAudioPlayer!
    var audioPlayer5: AVAudioPlayer!
    var audioPlayer6: AVAudioPlayer!
    var audioPlayer7: AVAudioPlayer!
    override func viewDidLoad() {
        
        do {
            let filePath = Bundle.main.path(forResource: "serif_effect",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer = try AVAudioPlayer(contentsOf: musicPath)
            audioPlayer.volume = 0.01
        } catch {
            print("error")
        }
        do {
            let filePath = Bundle.main.path(forResource: "bonfire_effect",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer2 = try AVAudioPlayer(contentsOf: musicPath)
            audioPlayer2.volume = 0.1
            audioPlayer2.numberOfLoops = 50
        } catch {
            print("error")
        }
        do {
            let filePath = Bundle.main.path(forResource: "ocean_bgm",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer3 = try AVAudioPlayer(contentsOf: musicPath)
            audioPlayer3.volume = 0.5
             audioPlayer2.numberOfLoops = 10
        } catch {
            print("error")
        }
        do {
            let filePath = Bundle.main.path(forResource: "hydrogen_effect",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer4 = try AVAudioPlayer(contentsOf: musicPath)
            audioPlayer4.volume = 0.5
        } catch {
            print("error")
        }
        do {
            let filePath = Bundle.main.path(forResource: "fire_effect",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer5 = try AVAudioPlayer(contentsOf: musicPath)
            audioPlayer5.volume = 1.0
            audioPlayer5.numberOfLoops = 10
        } catch {
            print("error")
        }
        do {
            let filePath = Bundle.main.path(forResource: "alchemic_effect",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer6 = try AVAudioPlayer(contentsOf: musicPath)
            audioPlayer6.volume = 1.0
        } catch {
            print("error")
        }
        do {
            let filePath = Bundle.main.path(forResource: "extinguishing_fire_effect",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer7 = try AVAudioPlayer(contentsOf: musicPath)
            audioPlayer7.volume = 1.0
        } catch {
            print("error")
        }
        name.layer.borderWidth = 1.0
        name.layer.borderColor = UIColor.gray.cgColor
        name.layer.cornerRadius = 6.0
        name.isHidden = true
        
        
        serif.layer.borderWidth = 1.0
        serif.layer.borderColor = UIColor.gray.cgColor
        serif.layer.cornerRadius = 6.0
        serif.isEditable = false
        serif.text = ""
        
        
        choice1.layer.borderWidth = 1.0
        choice1.layer.borderColor = UIColor.gray.cgColor
        choice1.layer.cornerRadius = 6.0
        choice1.isHidden = true

        
        
        choice2.layer.borderWidth = 1.0
        choice2.layer.borderColor = UIColor.gray.cgColor
        choice2.layer.cornerRadius = 6.0
        choice2.isHidden = true
      
        
        
        choice3.layer.borderWidth = 1.0
        choice3.layer.borderColor = UIColor.gray.cgColor
        choice3.layer.cornerRadius = 6.0
        choice3.isHidden = true
        
        
        you.isHidden = true
        npc1.isHidden = true
        
        item.isHidden = true
        get.isHidden = true
        
        experiment.isHidden = true
        
        go_next.isHidden = true
        
        yourname.placeholder = "あなたの名前(5文字以内)"
        yourname.isHidden = true
        male.isHidden = true
        female.isHidden = true
        
        finger.isHidden = true
        num = num2
        gender = gender2
        you_name = you_name2
        // Do any additional setup after loading the view.
    }
    @IBAction func serif(_ sender: Any) {
        audioPlayer.play()
        num += 1
        if(num==1){
            name.isHidden = false
            serif.text = "(·······。)"
        }
        if(num==2){
            serif.text = "(ここは····)"
             background.image = UIImage(named: "black02.png")
        }
        if(num==3){
           
            background.image = UIImage(named: "bonfire.jpg")
             you.isHidden = false
            audioPlayer2.play()
            serif.text = "(······)"
        }
        if(num==4){
            npc1.isHidden = false
             name.text = "謎の男"
             serif.text = "やぁ、起きたかい？\nここは海辺の洞窟の中だよ"
        }
        if(num==5){
            name.text = "???"
            serif.text = "あ、あなたは··？"
        }
        if(num==6){
            name.text = "レオナルド"
            serif.text = "そうだな...\nとりあえずはレオナルドとでも呼んでくれ"
            npc1.image = UIImage(named: "reo.png")
        }
        if(num==7){
            name.text = "レオナルド"
            serif.text = "君が倒れているところを通りすがったもんでね\n君の名は？"
        }
        if(num==8){
            get.isHidden = false
            get.text = "名前を入力しよう"
            name.text = "???"
            serif.text = ""
            yourname.isHidden = false
        }
        if(num==20){
            name.text = "レオナルド"
            serif.text = "\(String(describing: yourname.text!))っていうのか。\nイイ名前だ。"
            you_name = yourname.text!
        }
        if(num==21){
            name.text = "レオナルド"
            serif.text = "\(String(describing: yourname.text!))\n君はどうして倒れていたんだい？"
        }
        if(num==22){
            name.text = yourname.text
            serif.text = "すみません。\n覚えていないんです···。"
        }
        if(num==23){
            name.text = "レオナルド"
            serif.text = "ああ、敬語で話さなくていいよ。\n僕はただの放蕩者だからね。\nそれじゃあ、君はどこからきたのかな？"
        }
        if(num==24){
            name.text = yourname.text
            serif.text = "(思い出せない···)"
        }
        if(num==25){
            name.text = "レオナルド"
            serif.text = "「分からない」って顔をしているね\n他に何か覚えていることはあるかい？"
        }
        if(num==26){
            name.text = yourname.text
            serif.text = "(何も思い出せない···)"
        }
        if(num==27){
            name.text = yourname.text
            serif.text = "自分の名前以外何も分からない······"
        }
        if(num==28){
            name.text = "レオナルド"
            serif.text = "そうか、記憶喪失ってことか。\n実物は初めて見たよ。"
        }
        if(num==29){
            name.text = "レオナルド"
            serif.text = "なら思い出せるまで僕と一緒に来なよ。\nそれなりに働いてはもらうけど、\n記憶のない状態で一人よりはマシだろう。"
        }
        if(num==30){
            name.text = yourname.text
            serif.text = ""
            choice1.isHidden = false
            choice2.isHidden = false
            choice3.isHidden = false
            get.isHidden = false
            get.text = "セリフを選択しよう"
        }
        if(num==42&&serif.text=="じゃあ···\nよろしくお願いします！"){
            name.text = "レオナルド"
            serif.text = "こちらこそよろしく。"
            get.isHidden = true
        }
        if(num==42&&serif.text=="·········。"){
            name.text = "レオナルド"
            serif.text = "行く宛もないだろう？\nなら、一緒に来るんだ。"
            get.isHidden = true
        }
        if(num==42&&serif.text=="一人で生きていく。"){
            name.text = "レオナルド"
            serif.text = "この世界はそんなに安全な場所でもないんだ。\n助けたのに勝手に死なれてもつまらない。\nとりあえずは一緒に来るんだ。"
        }
        get.isHidden = true
        if(num==43){
            name.text = "レオナルド"
            serif.text = "じゃあ、まずは近くの海で海水を1Lほど取って来てくれ。\nほら、この容れ物を使いな。"
        }
        if(num==44){
            name.text = "レオナルド"
            serif.text = "僕は食料採ってくるから、３０分後にこの洞窟で待ち合わせだ。"
        }
        if(num==45&&gender==1){
            name.text = yourname.text
            serif.text = "あ、ああ、分かった。"
            npc1.isHidden = true
        }
        if(num==45&&gender==2){
            name.text = yourname.text
            serif.text = "う、うん、分かった。"
            npc1.isHidden = true
        }
        if(num==46&&gender==1){
            name.text = yourname.text
            serif.text = "さてと、僕も行くか。"
        }
        if(num==46&&gender==2){
            name.text = yourname.text
            serif.text = "海水だったわね。\n私もそろそろ行こう。"
        }
        if(num==47){
            name.text = yourname.text
            serif.text = "眩しい·····"
            background.image = UIImage(named: "black02.png")
        }
        if(num==48){
            name.text = yourname.text
            serif.text = "·······"
            background.image = UIImage(named: "ocean.JPG")
            audioPlayer2.pause()
            audioPlayer3.play()
        }
        if(num==49&&gender==1){
            name.text = yourname.text
            serif.text = "綺麗だ···。\n僕は誰なんだろう·····。"
        }
        if(num==49&&gender==2){
            name.text = yourname.text
            serif.text = "綺麗だ···。\n私は誰なんだろう·····。"
        }
        if(num==50){
            name.text = yourname.text
            serif.text = "今は考えても仕方ないか·····\n早く海水汲んで帰ろう"
        }
        if(num==51){
            name.text = ""
            serif.text = "\n　　　　　　　　　　  　３０分後"
            background.image = UIImage(named: "black01.jpg")
            get.isHidden = false
            get.text = "海水を手に入れた"
              audioPlayer3.pause()
        }
        if(num==52){
            get.isHidden = true
            npc1.isHidden = false
            name.text = "レオナルド"
            serif.text = "戻ったよ。\n海水は取って来てくれたかな？"
            background.image = UIImage(named: "bonfire.jpg")
          
            audioPlayer2.play()
        }
        if(num==53&&gender==1){
            name.text = yourname.text
            serif.text = "ああ、ここにあるよ。"
        }
        if(num==53&&gender==2){
            name.text = yourname.text
            serif.text = "ええ、ここにあるわよ。"
        }
        if(num==54){
            name.text = yourname.text
            get.isHidden = false
            get.text = "海水を渡した"
        }
        if(num==55){
            name.text = "レオナルド"
            get.isHidden = true
            serif.text = "ありがとう。"
        }
        if(num==56){
            name.text = yourname.text
            serif.text = "レオナルド···\nそれは······"
        }
        if(num==57){
            name.text = "レオナルド"
            serif.text = "ん？これかい？\n海で獲って来たうなぎとオレンジだよ。"
        }
        if(num==58){
            name.text = yourname.text
            serif.text = "(その組み合わせでいったい何を······。)"
        }
        if(num==59){
            name.text = "レオナルド"
            serif.text = "さて調理を始めるよ。\nまずはその海水とこの器具を使う。"
        }
        if(num==60){
            experiment.isHidden = false
            experiment.image = UIImage(named: "experiment01.png")
        }
        if(num==61){
            name.text = "レオナルド"
            serif.text = "まず②のフラスコに海水を入れる。\nそしてフラスコを加熱。"
        }
        if(num==62){
            name.text = "レオナルド"
            serif.text = "これが沸騰するとフラスコ同士をつなぐ\n⑤の部分を水蒸気が通るんだ。"
        }
        if(num==63){
            name.text = "レオナルド"
            serif.text = "そして⑤の部分で冷やされた水蒸気が\n再び液体の水に戻る。"
        }
        if(num==64){
            name.text = "レオナルド"
            serif.text = "それが⑧のフラスコに落ちて\n飲み水が出来上がるってわけさ。\n"
        }
        if(num==65){
            name.text = yourname.text
            serif.text = "なるほど"
            experiment.isHidden = true
        }
        if(num==66){
            name.text = "レオナルド"
            serif.text = "これで飲み水は完成。\nこの洞窟は気温が低いから直に水も冷えるだろう。\nその間に料理の方を作っていくよ。"
        }
        if(num==67){
            name.text = ""
            serif.text = "\n　　　　　　　　　　　　10分後"

        }
        if(num==68){
            name.text = "レオナルド"
            serif.text = "ほら、できたよ。\nうなぎのオレンジスライス添えだ。"
        }
        if(num==69){
            name.text = yourname.text
            serif.text = "············"
        }
        if(num==70){
            name.text = "レオナルド"
            serif.text = "なんだいその顔は、美味いんだからね。\n食べてみな。"
        }
        if(num==71){
            name.text = yourname.text
            serif.text = "うぐぐぐ·······\n変な味···ん··あれ、美味しい"
        }
        if(num==72){
            name.text = "レオナルド"
            serif.text = "だろ？！僕の大好物でね。\n最期はこれを食って終わりたいね····"
        }
        if(num==73){
            name.text = "???"
            serif.text = "（カサカサ···）"
        }
        if(num==74){
            name.text = "水"
            serif.text = "ポンッ！"
            audioPlayer4.play()
        }
        if(num==75){
            name.text = "二人"
            serif.text = "？！？！"
            audioPlayer5.play()
            audioPlayer2.pause()
        }
        if(num==76){
            name.text = "レオナルド"
            serif.text = "これは...！まさか追っ手がここまで···!\n説明は後だ！\n\(String(describing: yourname.text!))！逃げるぞ！！"
        }
        if(num==77){
            name.text = yourname.text
            serif.text = "············"
        }
        if(num==78){
            name.text = "レオナルド"
            serif.text = "\(String(describing: yourname.text!))！！\n何やってる！！"
        }
        if(num==79){
            name.text = yourname.text
            serif.text = "うっ·····錬成····き····記憶が····\nみ···水····錬成······。"
            item.isHidden = false
            finger.isHidden = false
        }
        if(num==91){
            name.text = you_name
            name.isHidden = false
            you.isHidden = false
            npc1.isHidden = false
            npc1.image = UIImage(named: "reo.png")
            serif.text = "······水を錬成！！"
            item.isHidden = true
            finger.isHidden = true
            experiment.isHidden = false
            experiment.image = UIImage(named: "alchemic")
            background.image = UIImage(named: "dangeon1.jpg")
            audioPlayer6.play()
            if(gender==1){
                you.image = UIImage(named: "man_normal.png")
            }
            if(gender==2){
                you.image = UIImage(named: "woman_normal.png")
            }
        }
        if(num==92){
            audioPlayer7.play()
            experiment.isHidden = true
            get.text = "炎が消えた"
            get.isHidden = false
        }
        if(num==93){
            name.text = "レオナルド"
            serif.text = "\(String(describing: yourname.text!))···今のは·····"
            get.isHidden = true
        }
        if(num==94){
            name.text = you_name
            serif.text = "····ハァ····ハァ·····。"
        }
        if(num==95){
            name.text = "レオナルド"
            serif.text = "\(String(describing: yourname.text!))···。\n話は後だ。\nここから離れるぞ！"
        }
        if(num==96){
            name.text = you_name
            serif.text = "·········。"
            npc1.isHidden = true
            go_next.isHidden = false
            finger.isHidden = false
        }
    }



    
    
    @IBAction func yourname(_ sender: Any) {
        name.text = yourname.text
        male.isHidden = false
        female.isHidden = false
        yourname.isHidden = true
        get.text = "性別を選択しよう"
    }
    @IBAction func male(_ sender: Any) {
        serif.text = "僕の名前は\(String(describing: name.text!))です"
        male.isHidden = true
        female.isHidden = true
        gender = 1
        num = 19
        you.image = UIImage(named: "man_normal.png")
        get.isHidden = true
    }
    @IBAction func female(_ sender: Any) {
        serif.text = "私の名前は\(String(describing: name.text!))です"
        male.isHidden = true
        female.isHidden = true
        gender = 2
        num = 19
        you.image = UIImage(named: "woman_normal.png")
        get.isHidden = true
    }
    
    
    @IBAction func choice1_1(_ sender: Any) {
        if(num<=40){
        serif.text = "じゃあ···\nよろしくお願いします！"
        num = 41
        choice1.isHidden = true
        choice2.isHidden = true
        choice3.isHidden = true
        }
        
    }
    @IBAction func choice1_2(_ sender: Any) {
        if(num<=40){
        serif.text = "·········。"
        num = 41
        choice1.isHidden = true
        choice2.isHidden = true
        choice3.isHidden = true
        }
    }
    @IBAction func choice1_3(_ sender: Any) {
        if(num<=40){
        serif.text = "一人で生きていく。"
        num = 41
        choice1.isHidden = true
        choice2.isHidden = true
        choice3.isHidden = true
        }
    }
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /// Segueで遷移する際のメソッド
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goItem" { //SecondViewControllerに遷移する場合
            // SecondViewControllerをインスタンス化
            let secondVc = segue.destination as! ViewControllerItem
            // 値を渡す
            secondVc.number = self.num
            let second2Vc = segue.destination as! ViewControllerItem
            second2Vc.gen = self.gender
            let second3Vc = segue.destination as! ViewControllerItem
            second3Vc.yn = self.you_name
        }
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
