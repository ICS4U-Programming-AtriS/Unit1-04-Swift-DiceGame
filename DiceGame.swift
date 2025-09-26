//
//  DiceGame.swift
//
//  Created by Atri Sarker
//  Created on 2025-09-25
//  Version 1.0
//  Copyright (c) 2025 Atri Sarker. All rights reserved.
//
//  Program that generates a random number,
//  and then asks the user to guess it.
//  The program will keep asking until the user gets it right.

// Constant for the minimum roll of the dice.
let minNum = 1
// Constant for the maximum roll of the dice.
let maxNum = 6

// Generate a random number between minNum and maxNum [INCLUSIVE]
let correctNum = Int.random(in: minNum...maxNum)
// DO WHILE LOOP [REPEAT WHILE IN SWIFT]
repeat {
    // RESET COLOR
    print("\u{001B}[0m", terminator: "")
    // Prompt for user's guess
    print("Enter a guess [\(minNum)-\(maxNum)]: ", terminator:"")
    // Get user's input for the guess
    let userInput = readLine() ?? ""
    // Convert the input to an integer
    if let guess = Int(userInput) {
        if (guess < minNum || guess > maxNum) {
            // Error if the user's guess is outside the valid range. [IN RED]
            print("\u{001B}[0;31mERROR: GUESS CAN'T BE OUTSIDE RANGE")
        } else if (guess > correctNum) {
            // Message if the user's guess is too high
            print("\u{001B}[0;34mYour guess is too high!")
        } else if (guess < correctNum) {
            // Message if the user's guess is too low
            print("\u{001B}[0;34mYour guess is too low!")
        } else {
            // If the guess is not higher than the correct number
            // and if it is not lower than the correct number,
            // then it must be the correct number
            // Congratulate the user
            print("\u{001B}[0;32mYou got the number right!")
            // BREAK OUT OF THE LOOP
          break;
        }
    } else {
        // Error message for non-numeric guess. [IN RED]
        print("\u{001B}[0;31mERROR: GUESS MUST BE AN INTEGER")
    }
} while (true)
