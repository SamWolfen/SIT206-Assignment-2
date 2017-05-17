//
//  questionViewController.swift
//  Kindling
//
//  Created by Samuel Hernandez on 17/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit

class questionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    //store responses and buttons
    
    @IBOutlet weak var textfield_1: UITextField!
    
    @IBAction func text1edit(_ sender: Any) {
        partlab1.text = textfield_1.text;
    }
    
    @IBOutlet weak var textfield_2: UITextField!
    
    @IBAction func text2edit(_ sender: Any) {
        partlab2.text = textfield_2.text;
    }
    
    
    
    
    
    @IBOutlet weak var textfield_3: UITextField!
    
    @IBOutlet weak var rad11trigger: UIButton!
    
    @IBOutlet weak var rad12trigger: UIButton!
    
    
    @IBOutlet weak var rad21trigger: UIButton!
    
    @IBOutlet weak var rad22trigger: UIButton!
    
    
    @IBOutlet weak var partlab1: UILabel!
    
    @IBOutlet weak var partlab2: UILabel!
    
    
    
    //variables
    var transport: Int=0;
    var clumsy:Int=0;
    
    
    
    //radio group 1
    @IBAction func radio_11(_ sender: Any) {
        rad11trigger.setImage(UIImage(named: "radioyes.png"), for: UIControlState.normal)
        
        rad12trigger.setImage(UIImage(named: "radiono.png"), for: UIControlState.normal)
        
        transport = 1;
        
        
        
    }
    
    @IBAction func radio_12(_ sender: Any) {
        rad11trigger.setImage(UIImage(named: "radiono.png"), for: UIControlState.normal)
        
        rad12trigger.setImage(UIImage(named: "radioyes.png"), for: UIControlState.normal)
        
        transport = 2;
    }
    
    //radio group 2
    @IBAction func radio_21(_ sender: Any) {
        
        rad21trigger.setImage(UIImage(named: "radioyes.png"), for: UIControlState.normal)
        
        rad22trigger.setImage(UIImage(named: "radiono.png"), for: UIControlState.normal)
        
        clumsy = 1;
    }
    
    @IBAction func radio_22(_ sender: Any) {
        
        rad21trigger.setImage(UIImage(named: "radiono.png"), for: UIControlState.normal)
        
        rad22trigger.setImage(UIImage(named: "radioyes.png"), for: UIControlState.normal)
        
        clumsy = 2;
        
    }
    
    
    
    @IBAction func submit(_ sender: Any) {
        
        label1.text = textfield_1.text
    }
    
    
    @IBOutlet weak var label1: UILabel!
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
