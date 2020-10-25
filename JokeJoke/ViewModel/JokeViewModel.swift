//
//  JokeViewModel.swift
//  JokeJoke
//
//  Created by Yasser on 2020-10-25.
//

import Foundation

struct JokeViewModel {
    
    let setup: String
    let punchline: String
    
    init(joke: JokeModel) {
        self.setup = joke.setup
        self.punchline = joke.punchline
    }
}
