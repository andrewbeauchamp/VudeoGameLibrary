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
            quit()
        }
    }
    func printMenu ( ) {
        //Options: Add Game, Remove Game, List Available Games, Check Out Game, Check in game, list chacked out game, quit
        
        print("""

- Menu Options -
    Add Game
    Remove Game
    List of Available Games
    Check Out Game
    Chack in Game
    List of Cecked Out Games

Quit

""")
    }
    func quit ( ) {
        //This function will be called when the user is ready to quit the application
        //SInce the user is ready to quit set shouldQuit = true
         shouldQuit = true
        //Show the user a message
        print("Thanks for using this application")
    }
    func getInput( ) -> String {
        //Take user input using readLine Chack to make sure that the input isn't nil or its not an empty string. If its a valid input return the input otherwise make the user enter input again
        let userInput = readLine()
        while userInput == nil || userInput == ""{
         print("Please put in a valid input")
            _ = readLine()
        }
        return userInput!
    }
}










