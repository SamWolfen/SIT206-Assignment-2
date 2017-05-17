//
//  storyViewController.swift
//  Kindling
//
//  Created by Samuel Hernandez on 17/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit

class storyViewController: UIViewController {
    
    
    //random numbers
    var rand1 : Int = Int(1+arc4random()%5);
    var rand2 : Int = Int(1+arc4random()%5);
    var rand3 : Int = Int(1+arc4random()%5);
    var rand4 : Int = Int(1+arc4random()%5);
    var rand5 : Int = Int(1+arc4random()%5);
    
    //import globals so I dont have to write the whole reference
    var PartA = questionViewController.Globals.PartA;
    var PartB = questionViewController.Globals.PartB;
    var Place = questionViewController.Globals.Place;
    var Clumsy = questionViewController.Globals.clumsy;
    var Trans = questionViewController.Globals.transport;
    
    
    
    //story parts
    var part1 : String = "";
    var part2 : String = "";
    var part3 : String = "";
    var part4 : String = "";
    var part5 : String = "";
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        if rand1 == 1
        {
            part1 = "it was a slightly cold morning as \("
        
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var label1: UILabel!

    @IBAction func button(_ sender: Any) {
        //label1.text = "\(Utilities.trips.d)"
        
        //label1.text = "\(stringding?.stringTest)"
        label1.text = questionViewController.Globals.PartA;
        
        
        
    }
    
}
