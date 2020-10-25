//
//  Joke.swift
//  JokeJoke
//
//  Created by Yasser on 2020-10-24.
//

import Foundation

struct JokeModel: Codable {
    let id: Int
    let type: String
    let setup: String
    let punchline: String
}
