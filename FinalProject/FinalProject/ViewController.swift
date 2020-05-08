//
//  ViewController.swift
//  FinalProject
//
//  Created by Arianna Charalambous on 5/6/20.
//  Copyright © 2020 Arianna Charalambous. All rights reserved.
//

import UIKit
class Global {
    var nameVar = String()
    var personalityVar = String()
    var personality1Var = String()
    var moodVar:Int = 0
    var mood1Var = String ()
}
let global = Global()
class ViewController: UIViewController {
    
//outlet
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var thePersonality: UILabel!
    
    @IBOutlet weak var theMood: UILabel!
    
    @IBOutlet weak var navView: UIView!
    
    @IBOutlet weak var myName: UITextField!
    
//action
    
    @IBAction func mySubmit(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Hello,  \(global.nameVar) to take the quizzes, click the menu button!"
        myName.resignFirstResponder()
    }
    
    @IBAction func clickMenu(_ sender: Any) {
      if(navView.isHidden) {
                 navView.isHidden = false
             }
             else {
                 navView.isHidden = true
             }
        
    }
    
    override func viewWillAppear(_ animated: Bool){
    thePersonality.text = "Personality: \(global.personalityVar) age range & \(global.personality1Var)"
    theMood.text = "Mood: \(global.moodVar) / \(global.mood1Var)"
   if(global.mood1Var == "Neutral"){
    myLabel.text = "Rollerskating!"
              myImage.image =
                  UIImage(named:"rollerskates")
        }
   else if(global.mood1Var == "Hopeful"){
    myLabel.text = "Baking!"
    myImage.image = UIImage (named:"bake")
        }
   else if(global.mood1Var == "Mixed-Emotions"){
    myLabel.text = "Painting!"
    myImage.image = UIImage(named:"paint")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
           navView.isHidden = true
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

