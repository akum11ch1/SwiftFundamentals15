//
//  ViewController.swift
//  Apple Pi3
//
//  Created by LaShae Lawrence on 3/9/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var currentGame: Game!
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var listOfWords = ["apple", "banana", "cherry", "grape", "orange"]

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
    }

    func startNewGame() {
        if !listOfWords.isEmpty {
            let randomIndex = Int.random(in: 0..<listOfWords.count)
            currentGame = Game(word: listOfWords[randomIndex], incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            listOfWords.remove(at: randomIndex)
            updateUI()
        } else {
        }
    }

    func updateUI() {
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins) Losses: \(totalLosses)"
        
        treeImageView.image = UIImage(named: "Tree \(incorrectMovesAllowed - currentGame.incorrectMovesRemaining).pdf")
        
        if currentGame.isGameOver {
            totalLosses += 1
            startNewGame()
        } else if currentGame.isWordGuessed {
            totalWins += 1
            startNewGame()
        }
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        guard let letter = sender.titleLabel?.text?.lowercased() else { return }
        
        sender.isEnabled = false
        
        let isCorrectGuess = currentGame.makeGuess(letter: Character(letter))
        
        updateUI()
    }

    @IBAction func restartGame(_ sender: UIButton) {
        startNewGame()
    }
}
