//
//  ContentView.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-16.
//

import SwiftUI

struct ContentView: View {
    
    // Declare the advisor
    let advisor = AdviceViewModel()
    
    // State declarations
    @State var question: String = ""
    @State var name: String = ""
    @State var answer: String = ""
    
    func respond() {
        answer = advisor.provideResponseFor(givenQuery: question, name: name)
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
            Button(action: respond) {
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
        .foregroundColor(Color.init(red: 30, green: 30, blue: 30))
        .ignoresSafeArea()
    }
}

