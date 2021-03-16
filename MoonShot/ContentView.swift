//
//  ContentView.swift
//  MoonShot
//
//  Created by George Patterson on 14/02/2021.
//

import SwiftUI
/*
 
 The codable protocol is an alias for decodable and encodable. So you could just use :Encodable or :Decodable for more specific protocols. 
 
 */

struct ContentView: View {
    
    //when we use generic types for decoding we must explicitly state the type we are receiving from the decoding.
    
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            List(missions) { mission in
                NavigationLink(destination: MissionView(mission: mission, astronauts: self.astronauts)) {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    VStack(alignment: .leading) {
                        Text(mission.displayName).font(.headline)
                        Text(mission.formattedDateLaunch)
                    } 
                }
            }
            .navigationBarTitle("Moonshot")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
