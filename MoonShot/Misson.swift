//
//  Misson.swift
//  MoonShot
//
//  Created by George Patterson on 14/02/2021.
//

import Foundation

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    struct CrewRole: Codable { //this is a nested struct, keeps data tidy and nicely readable
        let name: String
        let role: String
    }
    
    var displayName: String {
        "Apollo \(id)" //sets the displayname to the apollo number
    }
    
    var image: String {
        "apollo\(id)" //each image of our photos is named apollox so we can do Image(mission.image) to get the image file from assets
    }
    
    var formattedDateLaunch: String {
        if let launchDate = launchDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter.string(from: launchDate)
        } else {
            return "N/A"
        }
    }
}
