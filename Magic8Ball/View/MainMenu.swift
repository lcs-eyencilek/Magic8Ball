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
                
                Text("Magic 8 Ball").foregroundColor(.white)
                
                EightBall()
                
                // Navigation
                NavigationLink(destination: GetInput()) {
                    Text("Play")
                        .foregroundColor(.yellow)
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
