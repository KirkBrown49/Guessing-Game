//
//  main.swift
//  guessing game
//
//  Created by Kirk Brown on 8/20/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import Foundation

//varialbe that dertimines whether or not we're still playing the game
var playingGame = true

//this loop will run while we're playing the game
repeat {
    //this is a random number that we have generated. We cast it from a UInt32 to an int
    let randomNumber = Int(arc4random_uniform(101))
    
    //printing out the rsndom number for dubugging
    print("Random number: \(randomNumber)")
    print(randomNumber.)
    
    //this is the number of guesses a user has to get it right.
    var numberOfGuesses = 5
    
    //Welcome the user and prompt them for imput
    print("Welcome to the guessing game!")
    print("Please guess a number between 0 and 100.")
    var userGuess = Int(readLine()!)
    
    // if the user enters a value that can't be converted to an integer, userGuess will equal nil
    
    //input validation
    while userGuess == nil {
        //prompt the user to enter a valid number
        print("please enter a valid number")
        // get user input again
        userGuess = Int(readLine()!)
    }
    
    //make another if statement that says if the users guess is not equal to the random number, print out whether the guess is too high or too low.
    if userGuess != randomNumber {
        //while the user hasn't guess the random number and still has guesses remaining
        while userGuess! != randomNumber && numberOfGuesses > 1 {
            //remove a guess
            numberOfGuesses -= 1
            //tell the user how many guesses they have
            print("you have \(numberOfGuesses) tries reamaining.")
            if userGuess! > randomNumber {
                print("Number is too high!")
            }else if userGuess! < randomNumber {
                print("Number is too low!")
            }
            userGuess = Int(readLine()!)
            while userGuess == nil {
                //prompt the user to enter a valid number
                print("please enter a valid number")
                // get user input again
                userGuess = Int(readLine()!)
            }
        }
    }
    //Check to see if the user is out of guesses and hasn't
    if numberOfGuesses == 1 && userGuess != randomNumber {
        print("You ran out of tries. The correct answer was \(randomNumber)")
        print("Game Over!")
        print("would you like to play again? Y/N")
        var stillPlaying = readLine()!.uppercased()
        while stillPlaying != "Y" && stillPlaying != "N" {
            print("Would you like to play again? Y/N")
            stillPlaying = readLine()!
        }
    }
    //check to see if the user guess is equal to the the random number.
    if userGuess == randomNumber {
        // tell the user they won
        print("You win!")
        print("would you like to play again? Y/N")
        
        var stillPlaying = readLine()!.uppercased()
        //if they haven't enterd a Y or an N pronpt them until they do
        while stillPlaying != "Y" && stillPlaying != "N" {
            print("would you like to play again? Y/N")
            stillPlaying = readLine()!
            
        }
        
        if stillPlaying == "N" {
            playingGame = false
        }
    }
    
} while playingGame == true



