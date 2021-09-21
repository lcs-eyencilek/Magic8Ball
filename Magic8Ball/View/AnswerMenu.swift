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
                
                EightBall()
                BallText(content: "So \(nInput), what you asked was '\(qInput)'. My answer is,")
                Text(answer)
                    .foregroundColor(.yellow)
                    .font(.system(size: 25))
                BallText(content: "Would you like to go again?")
                
                // Navigation
                HStack {
                    NavigationLink(destination: GetInput()) {
                        Image("yes")
                    }
                    .padding()
                    NavigationLink(destination: MainMenu()) {
                        Image("no")
                    }
                    .padding()
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
