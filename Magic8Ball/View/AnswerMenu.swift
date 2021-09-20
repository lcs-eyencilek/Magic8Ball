//
//  AnswerMenu.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-20.
//

import SwiftUI

// Should display the result & ask user to try again (yes: nav to input view, no: nav to main menu)
struct AnswerMenu: View {
    
    // Declare the advisor
    let advisor = AdviceViewModel()
    
    var nInput: String = ""
    var qInput: String = ""
    var answer: String = ""
    
    init(q: String, n: String) {
        nInput = n
        qInput = q
        answer = advisor.provideResponseFor(givenQuery: qInput, name: nInput)
    }
    
    var body: some View {
        HStack() {
            Spacer()
            VStack {
                Spacer()
                Color.gray.edgesIgnoringSafeArea(.all)
                EightBall()
                Text("So \(nInput), what you asked was '\(qInput)'. My answer is,")
                    .foregroundColor(.white)
                Text(answer)
                    .foregroundColor(.yellow)
                Text("Would you like to go again?")
                    .foregroundColor(.white)
                
                // Navigation
                NavigationLink(destination: GetInput()) {
                    Text("Yes")
                }
                NavigationLink(destination: MainMenu()) {
                    Text("No")
                }
                Spacer()
            }
            Spacer()
        }
        .background(
            Color.gray
        )
        .edgesIgnoringSafeArea(.all)
    }
}
