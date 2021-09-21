//
//  BallText.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-21.
//

import SwiftUI

struct BallText: View {
    
    var content: String
    
    var body: some View {
        Text(content)
            .padding()
            .foregroundColor(.white)
            .font(.system(size: 25))
    }
}
