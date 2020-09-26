//
//  HeartButtonScaleEffect.swift
//  Beginning
//
//  Created by Kritbovorn Taweeyossak on 26/9/2563 BE.
//

import SwiftUI

struct HeartButtonScaleEffect: View {
    
    @State private var colorChanged: Bool = false
    @State private var sizeChanged: Bool = false
    
    var body: some View {
        
        Image(systemName: "heart.fill")
            .font(.system(size: 200, weight: .bold))
            .foregroundColor(colorChanged ? .blue : .red)
            .scaleEffect(sizeChanged ? 1.5 : 1)
            .onTapGesture(count: 1, perform: {
                withAnimation {
                    colorChanged.toggle()
                }
            })
            .onLongPressGesture {
                withAnimation {
                    sizeChanged.toggle()
                }
            }
    }
}

struct HeartButtonScaleEffect_Previews: PreviewProvider {
    static var previews: some View {
        HeartButtonScaleEffect()
    }
}
