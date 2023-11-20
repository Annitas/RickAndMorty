//
//  RNEndpoint.swift
//  RickAndMortyApp
//
//  Created by Anita Stashevskaya on 03.02.2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndPoint: String, CaseIterable, Hashable {
    ///  Endpoint to get character info
    case character
    ///  Endpoint to get location info
    case location
    ///  Endpoint to get episode info
    case episode
}
