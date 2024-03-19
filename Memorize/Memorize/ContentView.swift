//
//  ContentView.swift
//  Memorize
//
//  Created by YUXA on 2024/3/17.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻","🎃","🕷️","😈","💀","🕸️","🧙","🙀","👹","😱","👾","👽"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack{
            HStack{
                ForEach(0..<cardCount, id: \.self) {index in
                    CardView(content: emojis[index])
                }
            }
            .foregroundColor(.orange)
            
            HStack{
                Button(action: {
                    cardCount -= 1
                }, label: {
                    Image(systemName: "rectangle.stack.fill.badge.plus")
                })
                Spacer()
                Button(action: {
                    cardCount += 1
                }, label: {
                    Image(systemName: "rectangle.stack.fill.badge.minus")
                })
            }
            .imageScale(.large)
            .font(.largeTitle)
            
        }
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let  base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2 )
                Text(content).font(.largeTitle)
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
