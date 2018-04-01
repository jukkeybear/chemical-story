//
//  ViewControllerItem.swift
//  Chemical_Story
//
//  Created by 熊谷寿毅哉 on 2018/02/07.
//  Copyright © 2018年 jukkey5memory. All rights reserved.
//

import UIKit


class ViewControllerItem: UIViewController{
    @IBOutlet weak var genso1: UILabel!
    @IBOutlet weak var genso2: UILabel!
    @IBOutlet weak var compound: UILabel!
    @IBOutlet weak var compound2: UILabel!
    @IBOutlet weak var keisu1: UILabel!
    @IBOutlet weak var keisu2: UILabel!
    @IBOutlet weak var keisu3: UILabel!
    @IBOutlet weak var kazu1: UILabel!
    @IBOutlet weak var kazu2: UILabel!
    @IBOutlet weak var kazu3: UILabel!
    
    
    @IBOutlet weak var tenki1: UIButton!
    @IBOutlet weak var tenki2: UIButton!
    @IBOutlet weak var tenki3: UIButton!
    @IBOutlet weak var tenki4: UIButton!
    @IBOutlet weak var tenki5: UIButton!
    @IBOutlet weak var tenki6: UIButton!
    @IBOutlet weak var tenki7: UIButton!
    @IBOutlet weak var tenki8: UIButton!
    @IBOutlet weak var tenki9: UIButton!
    
    @IBOutlet weak var sign0: UIImageView!
    
    @IBOutlet weak var sign00: UIImageView!
    
    @IBOutlet weak var sign1: UIImageView!
    
    @IBOutlet weak var sign2: UIImageView!
    
    @IBOutlet weak var sign3: UIImageView!
    
    @IBOutlet weak var sign4: UIImageView!
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var ten: UIButton!
    @IBOutlet weak var eleven: UIButton!
    @IBOutlet weak var twelve: UIButton!
    @IBOutlet weak var thirteen: UIButton!
    @IBOutlet weak var fourteen: UIButton!
    @IBOutlet weak var fifteen: UIButton!
    @IBOutlet weak var sixteen: UIButton!
    @IBOutlet weak var seventeen: UIButton!
    @IBOutlet weak var eighteen: UIButton!
    @IBOutlet weak var nineteen: UIButton!
    @IBOutlet weak var twenty: UIButton!

    
    @IBOutlet weak var mondai: UILabel!
    @IBOutlet weak var method: UILabel!
    
    @IBOutlet weak var decision: UIButton!
    @IBOutlet weak var gameoverdecition: UIButton!
    
    @IBOutlet weak var nextdecision: UIButton!
    
    @IBOutlet weak var cancel: UIButton!
    
    var counter = 0
    
    var number = 0
    var gen = 0
    var yn = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sign0.isHidden = false
        sign00.isHidden = true
        sign1.isHidden = true
        sign2.isHidden = true
        sign3.isHidden = true
        sign4.isHidden = true
        decision.isHidden = false
        cancel.isHidden = true
        gameoverdecition.isHidden = true
        nextdecision.isHidden = true
        mondai.text = "H2Oの錬成"
        method.text = "一つ目の元素を選択してください。"
        
        // Do any additional setup after loading the view.
        print("\(number)")
        print("\(gen)")
         print("\(yn)")
        

    }
    @IBAction func one(_ sender: Any) {
      
        if(counter == 0){
              genso1.text = "H"
        }
        if(counter == 2){
              genso2.text = "H"
        }
    }
    @IBAction func two(_ sender: Any) {
        if(counter == 0){
            genso1.text = "He"
        }
        if(counter == 2){
            genso2.text = "He"
        }
    }
    @IBAction func three(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Li"
        }
        if(counter == 2){
            genso2.text = "Li"
        }
    }
    @IBAction func four(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Be"
        }
        if(counter == 2){
            genso2.text = "Be"
        }
    }
    @IBAction func five(_ sender: Any) {
        if(counter == 0){
            genso1.text = "B"
        }
        if(counter == 2){
            genso2.text = "B"
        }
    }
    @IBAction func six(_ sender: Any) {
        if(counter == 0){
            genso1.text = "C"
        }
        if(counter == 2){
            genso2.text = "C"
        }
    }
    @IBAction func seven(_ sender: Any) {
        if(counter == 0){
            genso1.text = "N"
        }
        if(counter == 2){
            genso2.text = "N"
        }
    }
    @IBAction func eight(_ sender: Any) {
        if(counter == 0){
            genso1.text = "O"
        }
        if(counter == 2){
            genso2.text = "O"
        }
    }
    @IBAction func nine(_ sender: Any) {
        if(counter == 0){
            genso1.text = "F"
        }
        if(counter == 2){
            genso2.text = "F"
        }
    }
    @IBAction func ten(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Ne"
        }
        if(counter == 2){
            genso2.text = "Ne"
        }
    }
    @IBAction func eleven(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Na"
        }
        if(counter == 2){
            genso2.text = "Na"
        }
    }
    @IBAction func twelve(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Mg"
        }
        if(counter == 2){
            genso2.text = "Mg"
        }
    }
    @IBAction func thirteen(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Al"
        }
        if(counter == 2){
            genso2.text = "Al"
        }
    }
    @IBAction func fourteen(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Si"
        }
        if(counter == 2){
            genso2.text = "Si"
        }
    }
    @IBAction func fifteen(_ sender: Any) {
        if(counter == 0){
            genso1.text = "P"
        }
        if(counter == 2){
            genso2.text = "P"
        }
    }
    @IBAction func sixteen(_ sender: Any) {
        if(counter == 0){
            genso1.text = "S"
        }
        if(counter == 2){
            genso2.text = "S"
        }
    }
    @IBAction func seventeen(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Cl"
        }
        if(counter == 2){
            genso2.text = "Cl"
        }
    }
    @IBAction func eighteen(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Ar"
        }
        if(counter == 2){
            genso2.text = "Ar"
        }
    }
    @IBAction func nineteen(_ sender: Any) {
        if(counter == 0){
            genso1.text = "K"
        }
        if(counter == 2){
            genso2.text = "K"
        }
    }
    @IBAction func twenty(_ sender: Any) {
        if(counter == 0){
            genso1.text = "Ca"
        }
        if(counter == 2){
            genso2.text = "Ca"
        }
    }
    
    

    
    @IBAction func decision(_ sender: Any) {
    counter = counter + 1
        if(counter <= 0){
            sign0.isHidden = false
            sign00.isHidden = true
            sign1.isHidden = true
            sign2.isHidden = true
            sign3.isHidden = true
            sign4.isHidden = true
            method.text = "一つ目の元素を選択してください"
        }
        if(counter == 1){
            sign0.isHidden = true
            sign00.isHidden = true
            sign1.isHidden = true
            sign2.isHidden = false
            sign3.isHidden = true
            sign4.isHidden = true
            
        }
        if(counter == 2){
            sign0.isHidden = true
            sign00.isHidden = false
            sign1.isHidden = true
            sign2.isHidden = true
            sign3.isHidden = true
            sign4.isHidden = true
            method.text = "二つ目の元素を選択してください"
        }
        if(counter == 3){
            sign0.isHidden = true
            sign00.isHidden = true
            sign1.isHidden = true
            sign2.isHidden = true
            sign3.isHidden = true
            sign4.isHidden = false
        }
        if(counter == 4){
            sign0.isHidden = true
            sign00.isHidden = true
            sign1.isHidden = false
            sign2.isHidden = true
            sign3.isHidden = true
            sign4.isHidden = true
            method.text = "一つ目の元素の係数を選択してください"
        }
        if(counter == 5){
            sign0.isHidden = true
            sign00.isHidden = true
            sign1.isHidden = true
            sign2.isHidden = true
            sign3.isHidden = false
            sign4.isHidden = true
            method.text = "二つ目の元素の係数を選択してください"
        }
        if(counter == 6){
            counter = 6
            sign0.isHidden = true
            sign00.isHidden = true
            sign1.isHidden = true
            sign2.isHidden = true
            sign3.isHidden = true
            sign4.isHidden = true
            method.text = "この組み合わせで錬成しますか？"
            cancel.isHidden = false
        }
        if(counter>=7){
        if(genso1.text=="H"&&genso2.text=="O"&&keisu1.text=="2"&&keisu2.text=="1"&&kazu1.text=="2"&&kazu2.text=="2"&&number<=89){
            compound.text = "H"
            compound2.text = "O"
            keisu3.text = "2"
            kazu3.text = "2"
            decision.isHidden = true
            cancel.isHidden = true
            number = 90
            nextdecision.isHidden = false
            }
        else{
            method.text = "GAME OVER"
            gameoverdecition.isHidden = false
            }
        }

    }
    @IBAction func cancel(_ sender: Any) {
        counter = 0
        genso1.text = "元素１"
        genso2.text = "元素２"
        keisu1.text = "?"
        keisu2.text = "?"
        keisu3.text = "?"
        kazu1.text = "?"
        kazu2.text = "?"
        kazu3.text = "?"
        compound.text = "??"
        compound2.text = "??"
        if(counter <= 0){
            sign0.isHidden = false
            sign00.isHidden = true
            sign1.isHidden = true
            sign2.isHidden = true
            sign3.isHidden = true
            sign4.isHidden = true
            method.text = "一つ目の元素を選択してください"
            cancel.isHidden = true
        }
    }
    
    
    @IBAction func number1(_ sender: Any) {
        if(counter==1){
            kazu1.text = "1"
        }
        if(counter==3){
            kazu2.text = "1"
        }
        if(counter==4){
            keisu1.text = "1"
        }
        if(counter==5){
            keisu2.text = "1"
        }
    }
    @IBAction func number2(_ sender: Any) {
        if(counter==1){
            kazu1.text = "2"
        }
        if(counter==3){
            kazu2.text = "2"
        }
        if(counter==4){
            keisu1.text = "2"
        }
        if(counter==5){
            keisu2.text = "2"
        }
    }
    @IBAction func number3(_ sender: Any) {
        if(counter==1){
            kazu1.text = "3"
        }
        if(counter==3){
            kazu2.text = "3"
        }
        if(counter==4){
            keisu1.text = "3"
        }
        if(counter==5){
            keisu2.text = "3"
        }
    }
    @IBAction func number4(_ sender: Any) {
        if(counter==1){
            kazu1.text = "4"
        }
        if(counter==3){
            kazu2.text = "4"
        }
        if(counter==4){
            keisu1.text = "4"
        }
        if(counter==5){
            keisu2.text = "4"
        }
    }
    @IBAction func number5(_ sender: Any) {
        if(counter==1){
            kazu1.text = "5"
        }
        if(counter==3){
            kazu2.text = "5"
        }
        if(counter==4){
            keisu1.text = "5"
        }
        if(counter==5){
            keisu2.text = "5"
        }
    }
    @IBAction func number6(_ sender: Any) {
        if(counter==1){
            kazu1.text = "6"
        }
        if(counter==3){
            kazu2.text = "6"
        }
        if(counter==4){
            keisu1.text = "6"
        }
        if(counter==5){
            keisu2.text = "6"
        }
    }
    @IBAction func number7(_ sender: Any) {
        if(counter==1){
            keisu1.text = "7"
        }
        if(counter==3){
            kazu2.text = "7"
        }
        if(counter==4){
            keisu1.text = "7"
        }
        if(counter==5){
            keisu2.text = "7"
        }
    }
    @IBAction func number8(_ sender: Any) {
        if(counter==1){
            kazu1.text = "8"
        }
        if(counter==3){
            kazu2.text = "8"
        }
        if(counter==4){
            keisu1.text = "8"
        }
        if(counter==5){
            keisu2.text = "8"
        }
    }
    @IBAction func number9(_ sender: Any) {
        if(counter==1){
            kazu1.text = "9"
        }
        if(counter==3){
            kazu2.text = "9"
        }
        if(counter==4){
            keisu1.text = "9"
        }
        if(counter==5){
            keisu2.text = "9"
        }
    }
    
    
    
    
 
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /// Segueで遷移する際のメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goMain" { //
            let firstVc = segue.destination as! ViewControllerMain
            // 値を渡す
            firstVc.c = self.compound.text!
            
            let first1Vc = segue.destination as! ViewControllerMain
            // 値を渡す
            first1Vc.co = self.compound2.text!
            
            let first2Vc = segue.destination as! ViewControllerMain
            // 値を渡す
            first2Vc.k = self.keisu3.text!
            let first3Vc = segue.destination as! ViewControllerMain
            // 値を渡す
            first3Vc.ke = self.kazu3.text!
            let first4Vc = segue.destination as! ViewControllerMain
            // 値を渡す
            first4Vc.num2 = self.number
            let first5Vc = segue.destination as! ViewControllerMain
            // 値を渡す
            first5Vc.gender2 = self.gen
            let first6Vc = segue.destination as! ViewControllerMain
            // 値を渡す
            first6Vc.you_name2 = self.yn
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
