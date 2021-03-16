//
//  HeirarchicalJSON.swift
//  MoonShot
//
//  Created by George Patterson on 14/02/2021.
//

import SwiftUI

struct HeirarchicalJSON: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "Taylor's Street",
                    "city": "LA"
                }
            }
            """ //this creates a string of JSON in code
            
            struct User: Codable {
                var name: String
                var address: Address //heirarchical struct
            }
            
            struct Address: Codable {
                var street: String
                var city: String
            }
            
            let data = Data(input.utf8) //converts JSON string into Data type
            let decoder = JSONDecoder() //inits the decoder
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street) //descodes the data and prints users street
            }
            
        }
    }
}

struct HeirarchicalJSON_Previews: PreviewProvider {
    static var previews: some View {
        HeirarchicalJSON()
    }
}
