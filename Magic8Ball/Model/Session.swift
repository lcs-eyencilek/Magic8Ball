//
//  Session.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-17.
//

import Foundation

struct Session {
    // Question is stored here
    let question: String
    let qname: String
    
    // Response will be provided later
    var response: String = ""
}
