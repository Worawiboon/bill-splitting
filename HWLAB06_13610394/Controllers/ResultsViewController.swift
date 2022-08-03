//
//  ResultsViewController.swift
//  HWLAB06_13610394
//
//  Created by Worawiboon on 24/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

     var billValue = "0.0"
     var person = "0"
     var tip = 0
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = billValue
        settingsLabel.text = "Split between \(person) people with \(tip)% tip"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
