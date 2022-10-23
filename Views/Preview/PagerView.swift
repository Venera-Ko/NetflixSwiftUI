//
//  PagerView.swift
//  NetflixClone
//
//  Created by V K on 21.10.2022.
//

import SwiftUI

struct PagerView<Content: View>: View {
    let pageCount: Int
    @Binding var currentIndex: Int
    @Binding var translation: CGFloat
    
    @State private var verticaldragIsActive = false
    
    let externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>
    
    
    let content: Content
    
    
    
    ///offset 390
    
    init(
        pageCount: Int,
        currentIndex: Binding<Int>,
        translation: Binding<CGFloat>,
        externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>,
        @ViewBuilder content: () -> Content
    ) {
        self.pageCount = pageCount
        self._currentIndex = currentIndex
        self._translation = translation
        self.externalDragGesture = externalDragGesture
        self.content = content()
    }
    
    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                self.content.frame(width: geo.size.width)
            }
            .frame(width: geo.size.width, alignment: .leading)
            .offset(x: -CGFloat(self.currentIndex) * geo.size.width)
            .offset(x: self.translation)
            .animation(.interactiveSpring())
            .gesture(
                externalDragGesture.simultaneously(with:
                                                    DragGesture(minimumDistance: 20)
                    .onChanged({ value in
                        
                        if verticaldragIsActive {
                            return
                        }
                        
                        if abs(value.translation.width) < abs(value.translation.height) {
//                            if abs(value.translation.width) < 30 {
                                verticaldragIsActive = true
                                return
//                            }
                        }
                        
                        ///horizontal drag only
                        
                        translation = value.translation.width
                    })
                        .onEnded({ value in
                            
                            if verticaldragIsActive {
                                verticaldragIsActive = false
                                return
                            }
                            
                            ///ending horizontal drag
                            let offset = value.translation.width / geo.size.width
                            let newIndex = (CGFloat(self.currentIndex) - offset).rounded()
                            currentIndex = min(max(Int(newIndex), 0), self.pageCount - 1)
                            translation = 0
                            
                            //                        print(value.translation.width)
                        })
                                                  )
            )
        }
    }
}

//struct PagerDummy: View {
//    @State private var currentIndex: Int = 0
//    @State private var translation: CGFloat = .zero
//
//    var body: some View {
//        PagerView(pageCount: 3, currentIndex: $currentIndex, translation: $translation) {
//            Color.red
//            Color.blue
//            Color.green
//        }
//    }
//}
//
//struct PagerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PagerDummy()
//    }
//}
