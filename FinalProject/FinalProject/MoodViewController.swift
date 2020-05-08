//
//  MoodViewController.swift
//  FinalProject
//
//  Created by Arianna Charalambous on 5/6/20.
//  Copyright © 2020 Arianna Charalambous. All rights reserved.
//

import UIKit

class MoodViewController: UIViewController {
    var relax:Int = 0
    var stress:Int = 0
    var sleep:Int = 0
    var happy:Int = 0
    var total:Int = 0
    
//outlets

    @IBOutlet weak var sliderVal: UILabel!
    
    @IBOutlet weak var myTotal: UILabel!
    
    //actions

    @IBAction func submit(_ sender: Any) {
        total = relax + stress + sleep + happy
        if(total <= 2) {
           myTotal.text = "Neutral"
                }
        else if(total > 2 && total <= 3){
           myTotal.text = "Hopeful"
                }
        else {
             myTotal.text = "Mixed-Emotions"
                }
        global.mood1Var = myTotal.text!
    }
    
    @IBAction func selectRelax(_ sender: UISwitch) {
        if sender.isOn {
                       relax = 1
                   }
                  else {
                       relax = 0
        }
    }
    
    @IBAction func selectStress(_ sender: UISwitch) {
        if sender.isOn {
                       stress = 1
                   }
                  else {
                       stress = 0
        }
    }
    
    @IBAction func selectSleep(_ sender: UISwitch) {
        if sender.isOn {
                       sleep = 1
                   }
                  else {
                       sleep = 0
        }
    }
    
    @IBAction func selectHappy(_ sender: UISwitch) {
        if sender.isOn {
                       happy = 1
                   }
                  else {
                       happy = 0
        }
    }
    
    
    
    @IBAction func mySlider(_ sender: UISlider) {
        global.moodVar =
            Int(sender.value)
        sliderVal.text = "\(global.moodVar)"
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
