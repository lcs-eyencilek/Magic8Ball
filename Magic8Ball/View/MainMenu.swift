//
//  MainMenu.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-20.
//

import SwiftUI

// Main Menu Display
struct MainMenu: View {
    var body: some View {
        
        HStack {
            Spacer()
            
            VStack {
                
                Spacer()
                
                BallText(content: "Magic 8 Ball")
                
                EightBall()
                    .font(.system(size: 55))
                
                // Navigation
                NavigationLink(destination: GetInput()) {
                    HStack {
                        Image("play")
                            .padding()
                        Text("Play")
                            .foregroundColor(.yellow)
                            .font(.system(size: 55))
                            .bold()
                    }
                }
                NavigationLink(destination: HistView()) {
                    HStack {
                        Image("Log")
                        Text("History Log")
                            .foregroundColor(.white)
                            .font(.system(size: 55))
                            .bold()
                    }
                }
                .padding()
                
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

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
