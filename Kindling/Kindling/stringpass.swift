//
//  stringpass.swift
//  Kindling
//
//  Created by Samuel Hernandez on 17/5/17.
//  Copyright © 2017 Deakin. All rights reserved.
//

import Foundation

class StringPass {

    var stringTest: String;
    
    struct GlobalStrings{
        var Dave : String;
    }
    
    
    
    init(test : String) {
        self.stringTest = test;
        
        
    }

    

}

class Test {
    
    static var stringpasser : [StringPass] = [];
    static func loadStrings() {
    stringpasser = [
        StringPass(test : "hello")
        ]
    }




}






class Trip {
    var tripDestination : String
    
    
    init(d: String)
    {
        self.tripDestination = d
        
    }
    
}

class Utilities {
    static var trips : [Trip] = []
    static func loadTrips() {
      
        trips = [
            Trip(d: "Melbourne"),
            
            
        ]
    }
    
}
