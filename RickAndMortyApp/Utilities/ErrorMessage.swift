//
//  ErrorMessage.swift
//  RickAndMortyApp
//
//  Created by Nihat on 26.03.2022.
//

import Foundation

enum ErrorMessage: String , Error {
    case invalidResponse = "Error: Incorrect request"
    case unableToComplete = "Error: Your request cannot be completed. Check Internet connection"
    case invalidData = "Error: Invalid data"
    
}
