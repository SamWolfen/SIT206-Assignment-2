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
    var rand1 : Int = Int(1+arc4random()%3);
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
    
    //other variables
    var PAatplace : Int = 0;
    var PBatplace : Int = 0;
    var CarTrouble : Int = 0
    
    
    //story parts
    var sect1 : String = "";
    var sect2 : String = "";
    var sect3 : String = "";
    var sect4 : String = "";
    var sect5 : String = "";
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //section1 5 possible segments
        
        if rand1 == 1 && Trans == 1
        {
            sect1 = "it was a slightly cold morning as \(PartA) went on their way to Uni/Work. They'd slightly overslept, so they were in a big hurry. They hopped into their car and drove off."
        
        }
        
        if rand1 == 1 && Trans == 2
        {
            sect1 = "it was a slightly cold morning as \(PartA) went on their way to Uni/Work. They'd overslept, so they were in a big hurry. They ran to the station and got on the train just in time."
            
        }
        
            
        if rand1 == 2 && Clumsy == 1
        {
          sect1 = "\(PartA) woke up to the sound of their alarm going off for the 5th time. The fifth alarm was the last possible time they could possibly get up without being late for Uni/Work. As \(PartA) stumbled around trying to get ready, they managed to bang their head on their shelf, leving a red mark on their forehead. \"Fantastic\" they thought."
            
            }
            
        if rand1 == 2 && Clumsy == 2
            {
            sect1 = "\(PartB) woke up to the sound of their alarm going off for the 5th time. The fifth alarm was the last possible time they could possibly get up without being late for Uni/Work. As \(PartB) stumbled around trying to get ready, they managed to bang their head on their shelf, leving a red mark on their forehead. \"Fantastic\" they thought."
                
            }
            
        if rand1 == 3
        {
            sect1 = "it was a peaceful saturday morning as \(PartA) woke up, they'd decided a few days before they they wanted to go to \(Place) to do they obvious things you'd do at a \(Place)."
        
        }
        
        
        //section2
        
        //section3
        
        //section4
        
        //section5
        
        //stitch the story together
        label1.text = "\(sect1) \(sect2) \(sect3) \(sect4) \(sect5)";
            
        
        
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
