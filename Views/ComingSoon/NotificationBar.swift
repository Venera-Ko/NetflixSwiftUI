//
//  NotificationBar.swift
//  NetflixClone
//
//  Created by V K on 20.10.2022.
//

import SwiftUI

struct NotificationBar: View {
    
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button {
            showNotificationList = true
        } label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .bold()
                
                Spacer()
                Image(systemName: "chevron.right")
            }
            .font(.system(size: 18, weight: .bold))
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct NotificationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            NotificationBar(showNotificationList: .constant(false))
        }
    }
}
