//
//  MemoryGame.swift
//  Practice
//
//  Created by Bhaskara Sai Vamsi Krishna Padala on 10/20/24.
//

import Foundation

struct MemoryGame<CardContent> {
   private(set) var cards: Array<Card>
    
    init (numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        //Add numberOfPairsOfCards x 2
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
            
        }
    }
    func choose(_ card: Card) {
        
    }
   mutating func shuffle() {
        cards.shuffle()
   }
    struct Card {
        var isFaceUp: Bool = true
        var ismatched: Bool = false
        let content: CardContent
    }
}
