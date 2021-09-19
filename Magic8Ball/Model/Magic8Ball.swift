//
//  Magic8Ball.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-17.
//

import Foundation

struct Magic8Ball {
    // Should retrieve a response from the list
    
    func getResponse() -> String {
        
        
        let responses = [
            "Yes - definitely",
            "It is decidedly so",
            "Without a doubt",
            "Reply hazy, try again",
            "Ask again later",
            "Better not tell you now",
            "My sources say no",
            "Outlook not so good",
            "Very doubtful"
        ]
        return responses.randomElement()!
    }
}
