//
//  ContentView.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-16.
//

import SwiftUI

struct ContentView: View {
    
    @State var question: String = ""
    @State var name: String = ""
    @State var answer: String = ""
    func setVoid(completion: @escaping () -> Void) {
        completion()
    }
    func magicBall() {
        let genNum = Int.random(in: 1...9)
        var response: String
        switch genNum {
          case 1:
            response = "Yes - definitely"
          case 2:
            response = "It is decidedly so"
          case 3:
            response = "Without a doubt"
          case 4:
            response = "Reply hazy, try again"
          case 5:
            response = "Ask again later"
          case 6:
            response = "Better not tell you now"
          case 7:
            response = "My sources say no"
          case 8:
            response = "Outlook not so good"
          case 9:
            response = "Very doubtful"
          default:
            response = ""
        }
        answer = "Q by [\(name)]: [\(question)]\nMagic 8 Ball's answer: [\(response)]"
    }
    var body: some View {
        VStack {
            TextField("Name",text: $name)
                .autocapitalization(.none)
                .border(Color(UIColor.separator))
                .padding()
            TextField("Question",text: $question)
                .autocapitalization(.none)
                .border(Color(UIColor.separator))
                .padding()
            Button(action: magicBall) {
                Text("Submit")
            }
            Text((answer != "") ? answer : "Post your question")
                .padding()
                .foregroundColor((answer != "") ? .black : .gray)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

