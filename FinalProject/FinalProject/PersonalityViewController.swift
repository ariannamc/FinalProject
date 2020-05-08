//
//  PersonalityViewController.swift
//  FinalProject
//
//  Created by Arianna Charalambous on 5/6/20.
//  Copyright © 2020 Arianna Charalambous. All rights reserved.
//

import UIKit

class PersonalityViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var introvert:Int = 0
    var active:Int = 0
    var coffee:Int = 0
    var procras:Int = 0
    var work:Int = 0
    var total:Int = 0
   //outlets
    
    @IBOutlet weak var pickerVal: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    let items = ["20-30", "40-50", "60-70"]
    
    var selection:String!
    
    
    @IBOutlet weak var myTotal: UILabel!
    
    //actions
    
    @IBAction func submit(_ sender: Any) {
        total = introvert + active + coffee + procras + work
        if(total <= 2) {
            myTotal.text = "You are a motivational icon."
        }
       else if(total > 2 && total <= 4){
          myTotal.text = "You try your best to keep productive every once and a while."
               }
       else {
            myTotal.text = "You definitely need some help with motivation."
               }
        global.personality1Var  = myTotal.text!
    }
  
    @IBAction func mySwitch(_ sender: UISwitch) {
        if sender.isOn {
                       introvert = 1
                   }
                  else {
                       introvert = 0
        }
    }
    
    @IBAction func mySwiitch(_ sender: UISwitch) {
        if sender.isOn {
                       active = 1
                   }
                  else {
                       active = 0
        }
    }
    
    @IBAction func mySwiiitch(_ sender: UISwitch) {
        if sender.isOn {
                       coffee = 1
                   }
                  else {
                       coffee = 0
        }
    }
    
    @IBAction func mySwiiiitch(_ sender: UISwitch) {
        if sender.isOn {
                       procras = 1
                   }
                  else {
                       procras = 0
        }
    }
    
    @IBAction func mySwiiiiitch(_ sender: UISwitch) {
        if sender.isOn {
                       work = 1
                   }
                  else {
                       work = 0
        }
    }
    
    
    
    //add these functions to run picker
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return items.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return items[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            selection = items[row]
            pickerVal.text = "Between: " + selection
            global.personalityVar = selection
           
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
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

