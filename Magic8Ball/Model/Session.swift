//
//  Session.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-17.
//

import Foundation

struct Session: Identifiable, Codable {
    
    var id: ObjectIdentifier
    let question: String
    let qname: String
    
    init(from decoder: Decoder) throws {
        
    }
    
    func encode(to encoder: Encoder) throws {
        return
    }
    
    // Response will be provided later
    var response: String = ""
}
