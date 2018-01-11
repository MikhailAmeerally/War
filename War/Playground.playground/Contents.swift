//: Playground - noun: a place where people can play

import UIKit

func cardValue(card : String) -> Int
{
    let temp = card[card.startIndex]
    
    switch temp {
    case "j":
        return 11
    case "q":
        return 12
    case "k":
        return 13
    case "a":
        return 14
    case "1":
        return 10
    default:
        return Int(String(temp))!
    }
    
}

cardValue(card: "jack_of_spades")
