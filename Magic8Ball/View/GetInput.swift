//
//  GetInput.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-20.
//

import SwiftUI

// Should get input from the user and navigate them to the answer view
struct GetInput: View {
    
    // State declarations
    @State var name: String = ""
    @State var question: String = ""
    
    var body: some View {
        HStack {
            Spacer ()
            
            VStack {
                
                Spacer()
                
                EightBall()
                BallText(content: "Magic 8 Ball wants to know...")
                TextField("Name..." ,text: $name)
                    .autocapitalization(.none)
                    .padding()
                TextField("Question..." ,text: $question)
                    .autocapitalization(.none)
                    .padding()
                
                // Navigation
                NavigationLink(destination: AnswerMenu(q: question, n: name)) {
                    Text("Proceed")
                        .foregroundColor((question == "" || name == "") ? .gray : .white)
                }
                .disabled((question == "" || name == "") ? true : false)
                
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
