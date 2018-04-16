//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT

// Loop forever until we get good input
var validInput = "" // outside the loop -- we can use it later on AFTER the loop
prompt: while 1 == 1 {
   
    // Prompt the user
    print("Input word is? ")
    
    // Wait for input
    // Make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil
        // Prompt again
        continue  // continue with the next iteration of while loop
        
    }
    
    // Test #2: Is the input the correct length
    if givenInput.count < 1 || givenInput.count > 30 {
        print("NO")
        // If we got here, input is too short or it's too long
        exit(0)
        
    }
    
    // Test #3: Check to ensure there is only UPPERCASE letters and no spaces
    checking: for individualCharacter in givenInput {
        
        // DEBUG: Print the character we are looking at
        // print(individualCharacter)
        
        // Check the character
        switch individualCharacter {
        case "H", "I","N", "O", "S", "X", "Z":
            continue checking   // OK, go to next character in the string
        default:
            print("NO")
            exit(0)    // Stop looking, we've found bad input
        }
        
    }
    
    // If we got to this point, we know the input is good
    validInput = givenInput
    print("YES")
    exit(0)
}




