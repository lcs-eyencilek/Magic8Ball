//
//  AdviceViewModel.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-17.
//

import Foundation

class AdviceViewModel {
    // History of advice sessions
    var sessions: [Session] = []
    
    init () {
        if let data = UserDefaults.standard.data(forKey: "SessionHist") {
            if let decoded = try? JSONDecoder().decode([Session].self, from: data) {
                self.sessions = decoded
                return
            }
        }

        self.sessions = []
    }
    
    func saveSessionHist(sessions: [Session]) {
        if let encoded = try? JSONEncoder().encode(sessions) {
            UserDefaults.standard.set(encoded, forKey: "SessionHist")
        }
    }
    
    // Given a question, provide some advice
    func provideResponseFor(givenQuery: String, name: String) -> String {
        
        let magicBall = Magic8Ball()
        
        var currentSession = Session(question: givenQuery, qname: name)
        currentSession.response = magicBall.getResponse()
        sessions.append(currentSession)
        
        // Save the updated data
        saveSessionHist(sessions: sessions)
        
        // Give the response back
        return currentSession.response
        
    }
}
