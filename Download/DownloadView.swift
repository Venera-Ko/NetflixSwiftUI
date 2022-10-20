//
//  DownloadView.swift
//  NetflixClone
//
//  Created by V K on 20.10.2022.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            Color.black
            ignoresSafeArea()
            
            VStack {
                HStack {
                    Image(systemName: "info.circle")
                    Text("Smart Downloads")
                    Text("ON")
                        .foregroundColor(.blue)
                    
                    Spacer()
                }
                .padding()
                .font(.system(size: 18, weight: .bold))
                
                ZStack {
                    Circle()
                        .foregroundColor(.graySearchBackground)
                        .padding(.horizontal, 100)
                    
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 76)
                        .foregroundColor(.gray)
                }
                .frame(height: 275)
                .padding(.top, 75)
                
                VStack(spacing: 20) {
                    Text("Never be without Netflix")
                        .font(.title2)
                        .bold()
                    Text("Download shows and movies so you'll never be without something to watch — \n even when you're offline.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                        .font(.system(size: 16))
                    
                    
                    Button {
                        //
                    } label: {
                        Text("See What You Can Download")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                    }

                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
        
        DownloadView()
    }
    }
}
