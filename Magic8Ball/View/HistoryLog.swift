//
//  HistoryLog.swift
//  Magic8Ball
//
//  Created by Efe Yencilek on 2021-09-21.
//

import SwiftUI

struct HistView: View {
    
    let advisor = AdviceViewModel()
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack {
                
                Spacer()
                
                ForEach(advisor.sessions) { session in
                        HStack {
                            Text("[\(session.qname)]: \(session.question)")
                                .padding()
                                .font(.system(size: 15))
                            Spacer()
                            Text("Magic 8 Ball: \(session.response)")
                                .padding()
                                .font(.system(size: 15))
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
