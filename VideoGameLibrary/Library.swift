//
//  Library.swift
//  VideoGameLibrary
//
//  Created by Andrew Beauchamp on 9/13/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation


class Library {
    var gameLibrary: [Game] = [Game(title: "spiderman"), Game(title: "Fortnite"), Game(title:"Fortnite2"), Game(title:"God of War") ]
    
    //This is where we put all of the functions
    
    func addGame ( ) {
        //Propmpt user to enter a title for new game to be added
        print("Please enter the title the title of the game you would like to add")
        //Get input from user
        var newGameTitle = readLine()
        //Check to make sure input isnt nil or an empty string
        while newGameTitle == nil || newGameTitle == ""{
            print("Please put in a valid input")
            newGameTitle = readLine()
            
        }
        //Initiate new game with the title
        let newGame = Game(title: newGameTitle!)
        
        //Add new game object to our game array
        gameLibrary.append(newGame)
    }
    
    func listAvailableGames ( ) {
        for game in gameLibrary {
            if game.checkedIn  {
                print(game.title)
            }
        }
    }
    
    func removeGame ( ) {
        //List all of our game titles with a number for the user to select
        for index in 1..<gameLibrary.count {
            print("\(index). \(gameLibrary[index].title)")
        }
        print("Please enter the number of the game you want to remove")
        var userInput = Int(readLine()!)
        //Make var to hold all possible indices for out array
        let validGameIndex = Array(0..<gameLibrary.count)
        //Checking to make sure input is not nil and the number entered is not beyond the index of our array
        while userInput == nil || !validGameIndex.contains(userInput!) {
            print("Invalid Input please enter a usable input")
            userInput = Int(readLine( )!)
        }
        //Remove the game
        gameLibrary.remove(at: userInput!)
    }
    
    func checkOutGame ( ) {
        //Loop through our game array and print index and title if game is available to be checked out
        for index in 0..<gameLibrary.count {
            if gameLibrary[index].checkedIn == true {
                print("\(index). \(gameLibrary[index].title)")
            }
        }
        print("Please enter which game you want to check out")
        var userInput = Int(readLine( )!)
        
        while userInput == nil {
            print("Invalid Input please enter a usable input")
            userInput = Int(readLine( )!)
        }
        //Change the checked in value of the game element at the index provided by the user
        gameLibrary[userInput!].checkedIn = false
        //Use calender to add time and establish due date
        let currentCalendar = Calendar.current
        let dueDate = currentCalendar.date(byAdding: .day, value: 14, to: Date())
        gameLibrary[userInput!].dueDate = dueDate
        
        //Use date formatter to print out date as a readable string for the user
        let dateFormatter = DateFormatter( )
        dateFormatter.dateFormat = "MM/dd/yyyy"
        print("This game is due on : \(dateFormatter.string(from: dueDate!))")
    }
    func checkGameIn ( ) {
        //Loop through our game array and print index and title if game is able to be checked in
        for index in 0..<gameLibrary.count {
            if gameLibrary[index].checkedIn == false {
                print("\(index). \(gameLibrary[index].title)")
            }
        }
        print("Please enter which game you want to check in")
        var userInput = Int(readLine( )!)
        
        while userInput == nil {
            print("Invalid Input please enter a usable input")
            userInput = Int(readLine( )!)
        }
        gameLibrary[userInput!].checkedIn = true
        //We need to remove the due date since the game has been returned
        gameLibrary[userInput!].dueDate = nil
    }
    
    
    func listOfCheckedOutGames ( ) {
        for game in gameLibrary {
            if !game.checkedIn {
                print(game.title)
                if let dueDate = game.dueDate {
                    let dateFormatter = DateFormatter( )
                    dateFormatter.dateFormat = "MM, dd, yyyy"
                    print(" \(game.title) is due on: \(dateFormatter.string(from: dueDate))")
                }
            }
        }
        
    }
}









