//
//  ViewController.swift
//  War
//
//  Created by Mikhail Ameerally on 2018-01-09.
//  Copyright © 2018 Mikhail Ameerally. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dealButton: UIButton!
    @IBOutlet weak var cpuDeck: UIImageView!
    @IBOutlet weak var playerDeck: UIImageView!
    @IBOutlet weak var playerDraw: UIImageView!
    @IBOutlet weak var cpuDraw: UIImageView!
    @IBOutlet weak var cpuScore: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var playerWin: UILabel!
    @IBOutlet weak var cpuWin: UILabel!
    
    var cpu_score : Int = 0
    var player_score : Int = 0
    
    var cards = ["2_of_clubs", "2_of_diamonds", "2_of_hearts", "2_of_spades",
                 "3_of_clubs", "3_of_diamonds", "3_of_hearts", "3_of_spades",
                 "4_of_clubs", "4_of_diamonds", "4_of_hearts", "4_of_spades",
                 "5_of_clubs", "5_of_diamonds", "5_of_hearts", "5_of_spades",
                 "6_of_clubs", "6_of_diamonds", "6_of_hearts", "6_of_spades",
                 "7_of_clubs", "7_of_diamonds", "7_of_hearts", "7_of_spades",
                 "8_of_clubs", "8_of_diamonds", "8_of_hearts", "8_of_spades",
                 "9_of_clubs", "9_of_diamonds", "9_of_hearts", "9_of_spades",
                 "10_of_clubs", "10_of_diamonds", "10_of_hearts", "10_of_spades",
                 "jack_of_clubs", "jack_of_diamonds", "jack_of_hearts", "jack_of_spades",
                 "queen_of_clubs", "queen_of_diamonds", "queen_of_hearts", "queen_of_spades",
                 "king_of_clubs", "king_of_diamonds", "king_of_hearts", "king_of_spades",
                 "ace_of_clubs", "ace_of_diamonds", "ace_of_hearts", "ace_of_spades"]
    
    
    
    
    @IBAction func dealBtn(_ sender: Any)
    {
        if(cards.count >= 2)
        {
            
            let card : Int = Int(arc4random_uniform(UInt32(cards.count)))
            let player_card = cards[card]
            cards.remove(at: card)
            
            let card2 = Int(arc4random_uniform(UInt32(cards.count)))
            let cpu_card = cards[card2]
            cards.remove(at: card2)
            
            if(cards.count == 0)
            {
                playerDeck.image = UIImage(named: "")
                cpuDeck.image = UIImage(named: "")
            }
            
            playerDraw.image = UIImage(named: player_card)
            cpuDraw.image = UIImage(named: cpu_card)
            
            let player_val = cardValue(card: player_card)
            let cpu_val = cardValue(card: cpu_card)
            
            if(player_val > cpu_val)
            {
                playerWin.text = "Winner!"
                player_score += 1
                playerScore.text = String(player_score)
                playerWin.isHidden = false
                cpuWin.isHidden = true
                
            }
            else if(cpu_val > player_val)
            {
                cpuWin.text = "Winner!!"
                cpu_score += 1
                cpuScore.text = String(cpu_score)
                cpuWin.isHidden = false
                playerWin.isHidden = true
            }
            else
            {
                cpuWin.text = "Draw!!"
                playerWin.text = "Draw!!"
                cpuWin.isHidden = false
                playerWin.isHidden = false
            }
        
        }
        else
        {
            resetGame()
        }
        
    }
    
    
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
    
    func resetGame() -> Void
    {
        cards = ["2_of_clubs", "2_of_diamonds", "2_of_hearts", "2_of_spades",
                 "3_of_clubs", "3_of_diamonds", "3_of_hearts", "3_of_spades",
                 "4_of_clubs", "4_of_diamonds", "4_of_hearts", "4_of_spades",
                 "5_of_clubs", "5_of_diamonds", "5_of_hearts", "5_of_spades",
                 "6_of_clubs", "6_of_diamonds", "6_of_hearts", "6_of_spades",
                 "7_of_clubs", "7_of_diamonds", "7_of_hearts", "7_of_spades",
                 "8_of_clubs", "8_of_diamonds", "8_of_hearts", "8_of_spades",
                 "9_of_clubs", "9_of_diamonds", "9_of_hearts", "9_of_spades",
                 "10_of_clubs", "10_of_diamonds", "10_of_hearts", "10_of_spades",
                 "jack_of_clubs", "jack_of_diamonds", "jack_of_hearts", "jack_of_spades",
                 "queen_of_clubs", "queen_of_diamonds", "queen_of_hearts", "queen_of_spades",
                 "king_of_clubs", "king_of_diamonds", "king_of_hearts", "king_of_spades",
                 "ace_of_clubs", "ace_of_diamonds", "ace_of_hearts", "ace_of_spades"]
        playerDeck.image = UIImage(named: "red_joker")
        playerDraw.image = UIImage(named: "")
        cpuDraw.image = UIImage(named: "")
        cpuDeck.image = UIImage(named: "black_joker")
        player_score = 0
        cpu_score = 0
        playerScore.text = "0"
        cpuScore.text = "0"
        playerWin.isHidden = true
        cpuWin.isHidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

