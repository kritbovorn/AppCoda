//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Kritbovorn Taweeyossak on 26/9/2563 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don ’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .font(.system(size: 24))
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .truncationMode(.middle)
            .lineSpacing(19.0)
            .padding()
//            .rotationEffect(Angle(degrees: 20), anchor: UnitPoint(x: 0, y: 0))
            .rotation3DEffect(
                Angle(degrees: 60),
                axis: (x: 1.0, y: 0.0, z: 0.0)
            )
            .shadow(color: .gray, radius: 2, x: 0, y: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
