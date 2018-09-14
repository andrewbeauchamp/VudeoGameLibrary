//
//  Menu.swift
//  VideoGameLibrary
//
//  Created by Andrew Beauchamp on 9/11/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation

class Menu {
    var shouldQuit = false  //when this is true we should quit running the video game library
    func go ( ) {
        
        //This function is going to handle making the menu run it will display the menu and take user input until the user wishes to quit the application
        while !shouldQuit {
             printMenu()
            var input = getInput()
            //We need to add inout validation function to make sure the value falls between 1-8
            while !validateInput(input) {
                //Display menu again
                printMenu()
                //get more input
                input = getInput()
            }
            handleInput(input)
        
        }
    }
    
    func validateInput(_ input: String) -> Bool {
        let validMenuOptions = Array(1...8)
        guard let number = Int(input)  else{
            return false
        }
        return validMenuOptions.contains(number)
    }
    
    func printMenu ( ) {
        //Options: Add Game, Remove Game, List Available Games, Check Out Game, Check in game, list chacked out game, quit
        
        print("""

- Menu Options -
    1.Add Game
    2.Remove Game
    3.List of Available Games
    4.Check Out Game
    5.Check in Game
    6.List of Cecked Out Games

7.Quit
8.Menu
""")
    }
    
    //Make a function called handleInput that takes our user input as a parameter and depending on what they print out what should we do
    let theLibrary = Library( )
    func handleInput (_ input : String ) {
        switch input {
        case "1":
            print("You have selected to add a game")
           //Check
            theLibrary.addGame()
            print("Game Added")
        case "2":
            print("You have selected to remove a game")
            theLibrary.removeGame()
            print("Game has been removed")
            //Call the library's remove game function, Check
        case "3":
            print("You have selected to see the list of avaailable games. Here they are")
            theLibrary.listAvailableGames()
            
            //Call the list of available games function, Check
        case "4":
            print("You have selected to check out a game")
            theLibrary.checkOutGame()
            print("Game Checked Out")
            //Call Check out game function
        case "5":
            print("You have selected to check in a game")
            theLibrary.checkGameIn()
            print("Game Checked In, Thank You!")
            //Call Check In Game function
        case "6":
            print("You have selected to see the list of checked out games, Here they are")
            theLibrary.listOfCheckedOutGames()
            //Call list of checked out games function
        case "8": //Don't need to do the print menu function because it prints the menu anyways, Check
            print("You have selected the Menu")
        case "7":
            //call the quit function, Check
            print("You have Quit")
            exit(0)
        default:
            break
        }
    }
    
    
    
    
    func quit ( ) {
        //This function will be called when the user is ready to quit the application
        //SInce the user is ready to quit set shouldQuit = true
         shouldQuit = true
        //Show the user a message
        print("Thanks for using this application")
    }
    func getInput( ) -> String {
        //Take user input using readLine Check to make sure that the input isn't nil or its not an empty string. If its a valid input return the input otherwise make the user enter input again
        let userInput = readLine()
        while userInput == nil || userInput == ""{
         print("Please put in a valid input")
            _ = readLine()
        }
        return userInput!
    }
}










