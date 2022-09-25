//
//  PlayButtonView.swift
//  NetflixClone
//
//  Created by V K on 24.09.2022.
//

import SwiftUI

struct PlayButtonView: View {
    
    var text: String
    var imageName: String
    
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(text)
                    .bold()
                    .font(.system(size: 17))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(3)
        })
    }
}

struct PlayButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            PlayButtonView(text: "Play", imageName: "play.fill") {
                
            }
        }
    }
}
