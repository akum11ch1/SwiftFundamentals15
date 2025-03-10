//
//  ViewController.swift
//  Apple Pi3
//
//  Created by LaShae Lawrence on 3/9/25.
//

import UIKit

class ViewController: UIViewController {
  var listOfWords = ["swift", "lashae", "jimmee", "jacob"]
  let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    
    @IBOutlet var treeImageView: UIImageView!
   
   
    @IBOutlet var correctWordLabel: UILabel!
    
  
    @IBOutlet var scoreLabel: UILabel!
    
  
    @IBOutlet var letterButtons: [UIButton]!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
    }
    
    

    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
}

