//
//  SearchBar.swift
//  NetflixClone
//
//  Created by V K on 18.10.2022.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding  var text: String
    
    @State private var isEditing: Bool = false
    
    @Binding var isLoading: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 285, height: 36)
                .cornerRadius(8)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
                    .background(Color.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                //                    .padding(7)
                    .onTapGesture {
                        isEditing = true
                    }
                    .animation(.default)
                
                if !text.isEmpty {
                if isLoading {
                    Button {
                        text = ""
                    } label: {
                        ActivityIndicator(style: .medium, animate: .constant(true))
                            .configure {
                                $0.color = .white
                            }
                        
                    }
                    .frame(width: 35, height: 35)
                    .padding(.trailing, 18)
                    
                } else {
                    Button {
                        text = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.graySearchText)
                            .frame(width: 35, height: 35)
                    }
                    .padding(.trailing, 18)
                }
                }
                
                if isEditing {
                    Button {
                        text = ""
                        isEditing = false
                        hideKeyboard()
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                }
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            SearchBar(text: .constant(""), isLoading: .constant(false))
                .padding()
            
        }
    }
}
