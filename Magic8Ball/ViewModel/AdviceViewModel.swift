//
//  AdviceViewModel.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-17.
//

import Foundation

class AdviceViewModel {
    // History of advice sessions
    var sessions: [Session] = []    // empty array to start
    
    // Given a question, provide some advice
    // Library shortcut: Command-Shift-L
    func provideResponseFor(givenQuery: String, name: String) -> String {
        // Declare the Magic8Ball instance
        let magicBall = Magic8Ball()
        // Start an advice session
        var currentSession = Session(question: givenQuery, qname: name)
        // Use the static function right from the Magic8Ball type (no instance required!)
        currentSession.response = magicBall.getResponse()
        // Save the question and the advice given to the history
        sessions.append(currentSession)
        
        // Give the response back
        return currentSession.response
        
    }
}
