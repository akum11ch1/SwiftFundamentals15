//
//  Game.swift
//  Apple Pie
//
//  Created by LaShae Lawrence on 3/9/25.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]

    var formattedWord: String {
        var displayWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                displayWord += "\(letter)"
            } else {
                displayWord += "_"
            }
        }
        return displayWord
    }

    var isWordGuessed: Bool {
        return formattedWord == word
    }

    var isGameOver: Bool {
        return incorrectMovesRemaining == 0
    }

    mutating func makeGuess(letter: Character) -> Bool {
        if word.contains(letter) {
            guessedLetters.append(letter)
            return true
        } else {
            incorrectMovesRemaining -= 1
            return false
        }
    }
}

