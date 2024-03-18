//
//  ContentView.swift
//  Memorize
//
//  Created by YUXA on 2024/3/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let  base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2 )
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
                
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}












#Preview {
    ContentView()
}
