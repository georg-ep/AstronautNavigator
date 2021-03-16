//
//  Bundle-Decodable.swift
//  MoonShot
//
//  Created by George Patterson on 14/02/2021.
//

import Foundation

/*
 This will allow us to turn astronauts.json into an array of astronaut instances. which means we need to:
 1. use bundle to find the path to the file,
 2. load that into an instance of data and
 3. pass it through the decoder
 
 We're going to write an extension to bundle to do it all in one centralised place.
 
 
 Generics
 
 In order to load different types of JSON files we need to use generics.
 They allow us to write code which work with a variety of different types.
 We need to handle arrays of astronauts and arrays of missions both of which we created different structs for
 
 This is illustrated as <T> which is an abbreviation for any GENERIC type.
 The type must be decoded from JSON so we make sure that this type conforms to Codable.
 
 Here T is replacing [Astronaut] and [Mission]
 remmember not to wrap [T] because this means an array of an array of Astronauts.
 
 */

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T { //make sure that decoding returns T
        guard let url = self.url(forResource: file, withExtension: nil) else { //attempts to find the file from the bundle
            fatalError("Could not locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else { //attempts to load the file as an instance of Data
            fatalError("Could not load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd" //these are case sensitive look online for date formatting options
        decoder.dateDecodingStrategy = .formatted(formatter) //tells the decoder to parse dats using the format that we expect.
        
        guard let loaded = try? decoder.decode(T.self, from: data) else { //T.self is replaced for [Astronaut] because this funciton is now generic and can handle multiple types.
            fatalError("Could not decoded \(file) from bundle.") //attempts to decode the data as astronaut structs
        }
        
        return loaded //returns astronaut struct array loaded from the decoded JSON file. 
        
    }
    
}
