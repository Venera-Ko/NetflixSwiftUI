//
//  SmallVerticalButton.swift
//  NetflixClone
//
//  Created by V K on 24.09.2022.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    var text: String
    
    var isOffImage: String
    var isOnImage: String
    var color: Color = Color.white
    
    var isOn: Bool
    
    var imageName: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    
    
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(color)
                
                Text(text)
                    .foregroundColor(color)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SmallVerticalButton(text: "button",
                                isOffImage: "plus",
                                isOnImage: "checkmark",
                                isOn: false, action: {
                print("tapped")
            })
        }
    }
}
