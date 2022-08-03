//
//  ViewController.swift
//  HWLAB06_13610394
//
//  Created by Worawiboon on 24/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var tipC = 0
    
    var Calcutorbill = Calculatebill()
    
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBOutlet weak var numStepper: UIStepper!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numStepper.wraps = true
        numStepper.autorepeat = true
        numStepper.maximumValue = 100
        
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        switch sender.tag {
          case 0:
               zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
                tipC = 0
          case 10:
              zeroPctButton.isSelected = false
               tenPctButton.isSelected = true
               twentyPctButton.isSelected = false
            tipC = 10
          case 20:
               zeroPctButton.isSelected = false
               tenPctButton.isSelected = false
               twentyPctButton.isSelected = true
               tipC = 20
          default:
              break
          }
        
       
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f",sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
      
        let bill = Float(billTextField.text!)!
        let tip = tipC
        let person = Float(splitNumberLabel.text!)!
        
        Calcutorbill.Calbill(bill: bill, tip: Float(tipC), person: Float(person))
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
           let destinationVC = segue.destination as! ResultsViewController
               destinationVC.billValue = Calcutorbill.getBillValue()
               destinationVC.person = splitNumberLabel.text!
               destinationVC.tip = tipC
        }//end if
        
    }//end function prepare

    
    
    
    
    

}

