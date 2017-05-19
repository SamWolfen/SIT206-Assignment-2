//
//  storyViewController.swift
//  Kindling
//
//  Created by Samuel Hernandez on 17/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import UIKit
import Social

class storyViewController: UIViewController {
    
    
    //random numbers
    var rand1 : Int = Int(1+arc4random()%3);
    //var rand2 : Int = Int(1+arc4random()%5);
    var rand3 : Int = Int(1+arc4random()%2);
    var rand4 : Int = Int(1+arc4random()%2);
    //var rand5 : Int = Int(1+arc4random()%5);
    
    //import globals so I dont have to write the whole reference
    var PartA = questionViewController.Globals.PartA;
    var PartB = questionViewController.Globals.PartB;
    var Place = questionViewController.Globals.Place;
    var Clumsy = questionViewController.Globals.clumsy;
    var Trans = questionViewController.Globals.transport;
    
    //other variables
    var PAatplace : Int = 0;
    var PBatplace : Int = 0;
    var CarTrouble : Int = 0;
    var HaveMet : Int = 0;
    var Hurt : Int = 0;
    
    
    //story parts
    var sect1 : String = "error, section 1 not generated";
    var sect2 : String = "error, section 2 not generated";
    var sect3 : String = "error, section 3 not generated";
    var sect4 : String = "error, section 4 not generated";
    var sect5 : String = "error, section 5 not generated";
    
    //outlets
    //outlets
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var Story: UITextView!
    
    
    
    
    
    
    
    

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
          sect1 = "\(PartA) woke up to the sound of their alarm going off for the 5th time. The fifth alarm was the last possible time they could possibly get up without being late for Uni/Work. As \(PartA) stumbled around trying to get ready, they managed to bang their head on their shelf, leaving a red mark on their forehead. \"Fantastic\" they thought."
            
              Hurt = 1;
            
            }
            
        if rand1 == 2 && Clumsy == 2
            {
            sect1 = "\(PartB) woke up to the sound of their alarm going off for the 5th time. The fifth alarm was the last possible time they could possibly get up without being late for Uni/Work. As \(PartB) stumbled around trying to get ready, they managed to bang their head on their shelf, leaving a red mark on their forehead. \"Fantastic\" they thought."
                
                Hurt = 1;
                
            }
            
        if rand1 == 3
        {
            sect1 = "it was a peaceful saturday morning as \(PartA) woke up, they'd decided a few days before they they wanted to go to \(Place) to do the obvious things you'd do at a \(Place)."
            PAatplace = 1;
        
        }
        
        
        //section2 some sort of complication/event
        
        
        if (Trans == 1 && Clumsy == 1 && Hurt == 0)
        {sect2 = "As \(PartA) drove along, they began to notice that their car was making a funny noise. \"Oh no... I probably shouldnt have put off that service...\" they thought."
            
            self.CarTrouble = 1;
        }
        
        if (Trans == 1 && Clumsy == 2 && Hurt == 0)
        {sect2 = "As \(PartB) drove along, they began to notice that their car was making a funny noise. \"Oh no... I probably shouldnt have put off that service...\" they thought."
            
            self.CarTrouble = 1;
        }
        
        if (Trans == 1 && Clumsy == 1 && Hurt == 1)
        {sect2 = "As \(PartA) drove along, they began to notice that their car was making a funny noise. \"Oh no... I probably shouldnt have put off that service...\" they thought. As they looked in the rear-view mirror they caught a glimpse of the red mark; It wasnt exactly fading"
        
            self.CarTrouble = 1;
        }
        
        
        if (Trans == 1 && Clumsy == 2 && Hurt == 1)
        {sect2 = "As \(PartB) drove along, they began to notice that their car was making a funny noise. \"Oh no... I probably shouldnt have put off that service...\" they thought. As they looked in the rear-view mirror they caught a glimpse of the red mark; It wasnt exactly fading"
            
            self.CarTrouble = 1;
        }
        
        if Trans == 2 && Clumsy == 2 && Hurt == 1
        {sect2 = "The train was crowded and loud; \(PartB) could see the red mark in the window reflection from where they'd earlier bumped their head. Also in the reflection, they noticed someone looking at them, it was \(PartA); \(PartB) turned to make eye contact and \(PartA) gave a smile"
            HaveMet = 1;
        }
        
        if Trans == 2 && Clumsy == 2 && Hurt == 0
        {sect2 = "The train was crowded and loud; \(PartB) was absent mindedly staring out the window when someone caught their eye. In the reflection, they noticed someone looking at them, it was \(PartA); \(PartB) turned to make eye contact and \(PartA) gave a smile"
            HaveMet = 1;
        }
        
        
        if Trans == 2 && Clumsy == 1 && Hurt == 1
        {sect2 = "The train was crowded and loud; \(PartA) could see the red mark in the window reflection from where they'd earlier bumped their head. Also in the reflection, they noticed someone looking at them, it was \(PartB); \(PartA) turned to make eye contact and \(PartA) gave a smile"
            HaveMet = 1;
        }
        
        if Trans == 2 && Clumsy == 1 && Hurt == 0
        {sect2 = "The train was crowded and loud; \(PartA) was absent mindedly staring out the window when someone caught their eye. In the reflection, they noticed someone looking at them, it was \(PartB); \(PartA) turned to make eye contact and \(PartB) gave a smile"
            HaveMet = 1;
        }
        
        if PAatplace == 1 && PBatplace == 0
        {sect2 = "\(PartB) was at the \(Place) reading a book when \(PartA) came in; neither acknowledged each other besides \(PartB) slightly looking over their book"
            HaveMet = 1;
            PBatplace = 1;
        }
        
        if PBatplace == 1 && PAatplace == 0
        {sect2 = "\(PartA) was at the \(Place) reading a book when \(PartB) came in; neither acknowledged each other besides \(PartA) slightly looking over their book"
            HaveMet = 1;
            PAatplace = 1;
        }
        
        
        //section3
        if (rand3 == 1 && PBatplace == 0 && PAatplace == 0 && HaveMet == 1 && Hurt == 0 && Trans == 2){
            
            sect3 = "for a while, they both said nothing, eventually one had to break the silence. \"Hi\" said \(PartA), clearly a wordsmith. \(PartB) smiled \"I better introduce myself, my name is \(PartA).\" \"\(PartB)\" replied \(PartB), \"Well \(PartB), I'm not usually so forward but the chances of bumping into you again are probably not likely. Would you like to go for coffe or something sometime? I'll be at \(Place) later today, perhaps we could meet?\" asked \(PartA) \n \"I'd like that replied \(PartB)\""}
        
        if (rand3 == 2 && PBatplace == 0 && PAatplace == 0 && HaveMet == 1 && Hurt == 0 && Trans == 2){
            
            sect3 = "for a while, they both said nothing, eventually one had to break the silence. \"Hi\" said \(PartB), clearly a wordsmith. \(PartA) smiled \"I better introduce myself, my name is \(PartB).\" \"\(PartA)\" replied \(PartA), \"Well \(PartA), I'm not usually so forward but the chances of bumping into you again are probably not likely. Would you like to go for coffe or something sometime? I'll be at \(Place) later today, perhaps we could meet?\" asked \(PartB) \n \"I'd like that replied \(PartA)\""}
        
        if (rand3 == 1 && HaveMet == 1 && Hurt == 1 && Clumsy == 1){
            
            sect3 = "their eyes met and sparks flew, as if this app was charging by the cliche. \(PartA) figured they needed to take a chance \"Hi, I dont usually have this red mark on my head by the way\" \(PartB) grinned and replied \"I didnt notice, I was too busy looking into your eyes\" "}
        
        
        if (rand3 == 1 && HaveMet == 1 && Hurt == 1 && Clumsy == 2){
            
            sect3 = "their eyes met and sparks flew, as if this app was charging by the cliche. \(PartA) figured they needed to take a chance \"Hi, I dont usually have this red mark on my head by the way\" \(PartB) grinned and replied \"I didnt notice, I was too busy looking into your eyes\" "}
        
        if (rand3 == 1 && PAatplace == 1 && PBatplace == 1){
            
            sect3 = "their eyes met and sparks flew, as if this app was charging by the cliche. \"Hi I'm \(PartA)\" stammered \(PartA), clearly too stunned to speak properly. \"I'm \(PartB)\" \(PartB) replied shyly. \"Wanna go get a coffee or something?\" asked \(PartA). \"Sounds good to me\" they replied. "
        }
        
        if (rand3 == 2 && PAatplace == 1 && PBatplace == 1){
            
            sect3 = "their eyes met and sparks flew, as if this app was charging by the cliche. \"Hi I'm \(PartB)\" stammered \(PartB), clearly too stunned to speak properly. \"I'm \(PartA)\" \(PartA) replied shyly. \"Wanna go get a coffee or something?\" asked \(PartB). \"Sounds good to me\" they replied. "
        }
        
        if rand3 == 1 && CarTrouble == 1 && Clumsy == 1{
            sect3 = "the car began to splutter so \(PartA) pulled over and checked the car. How could they have forgotten to top up the radiator for so long? Fortunatly \(PartB) was walking by and asked what was wrong. When \(PartA) explained, \(PartB) offered their water bottle to fill the radiator. Amazingly it worked and \(PartA) offered to take \(PartB) out to lunch as a thank you. They accepted the offer"
            HaveMet=1;
        }
        
        
        
        if rand3 == 1 && CarTrouble == 1 && Clumsy == 2{
            sect3 = "the car began to splutter so \(PartB) pulled over and checked the car. How could they have forgotten to top up the radiator for so long? Fortunatly \(PartA) was walking by and asked what was wrong. When \(PartB) explained, \(PartA) offered their water bottle to fill the radiator. Amazingly it worked and \(PartB) offered to take \(PartA) out to lunch as a thank you. They accepted the offer"
            HaveMet=1;
        }
        
        
        
        //section4
        //safety net
        sect4 = "As they got to know eachother more they realised that the pair had something special, so \(PartB) asked if \(PartA) would like to see eachother and \(PartB) agreed";
        
        
        
        if rand4==1 && HaveMet == 1 && CarTrouble == 1
        {
            sect4 = "As they got to know eachother more they realised that the pair had something special, so \(PartA) asked if \(PartB) would like to see eachother and \(PartB) agreed"
        }
        
        if rand4==2 && HaveMet == 1 && CarTrouble == 1
        {
            sect4 = "As they got to know eachother more they realised that the pair had something special, so \(PartB) asked if \(PartA) would like to see eachother and \(PartB) agreed"
        }
        
        if rand4 == 1 && PBatplace == 0 && PAatplace == 0 && HaveMet == 1 && Trans == 2{
        
        sect4 = "Later that day, \(PartA) and \(PartB) met at the \(Place) and got to know eachother. \(PartA) really thought that \(PartB) was special so they asked them if they wanted to see one another. \(PartB) said yes."}
        
        if rand4 == 2 && PBatplace == 0 && PAatplace == 0 && HaveMet == 1 && Trans == 2{
            
            sect4 = "Later that day, \(PartA) and \(PartB) met at the \(Place) and got to know eachother. \(PartB) really thought that \(PartA) was special so they asked them if they wanted to see one another. \(PartA) said yes."}
        //stitch the story together
        Story.text = "\(sect1)\n\(sect2)\n\(sect3)\n\(sect4)";
            
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //share buttons dont work in simulation, and I have no way to test it, but from what I can understand this *should* work
    @IBAction func shareFace(_ sender: Any) {
        if(SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook)) {
            let socialController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            socialController?.setInitialText("Here is the story I generated with the Kindling app! \(Story.text)")
            //            socialController.addImage(someUIImageInstance)
            //            socialController.addURL(someNSURLInstance)
            
            self.present(socialController!, animated: true, completion: nil)
        }
    }
    //tweet limits might be a problem
    @IBAction func shareTwit(_ sender: Any) {
        if(SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter)) {
            let socialController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            socialController?.setInitialText("Here is the story I generated with the Kindling app! \(Story.text)")
            //            socialController.addImage(someUIImageInstance)
            //            socialController.addURL(someNSURLInstance)
            
            self.present(socialController!, animated: true, completion: nil)
        }
        
    }
    
    
    

    
        
        
    
    
}
