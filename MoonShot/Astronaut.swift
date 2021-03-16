//
//  Astronaut.swift
//  MoonShot
//
//  Created by George Patterson on 14/02/2021.
//

import Foundation

struct Astronaut: Codable, Identifiable {
    let name: String
    let id: String
    let description: String
}

//creates astronaut struct, identifiable and codable.
//It's made identifiable so that it can be used in arrays and ForEach
//It's made codable so that we can create instances of this struct straight from our JSON
