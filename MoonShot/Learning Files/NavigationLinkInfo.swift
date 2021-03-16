//
//  NavigationLinkInfo.swift
//  MoonShot
//
//  Created by George Patterson on 14/02/2021.
//

import SwiftUI

/*
 
 NavigationView allows us to push views onto a view stack
 
 NavigationLink allows us to display a new view given something to tap and a destination to go to
 
 Sheet vs Nav Link
 
 NavigationLink is for showing details about the user’s selection, like you’re digging deeper into a topic.
 
 sheet() is for showing unrelated content, such as settings or a compose window.
 
 */

struct NavigationLinkInfo: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in //gets row number for each iteration
                NavigationLink(destination: Text("Row \(row)")) {
                    Text("Row #\(row)")
                    //sets up each row with a link to a new view displaying the row number
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct NavigationLinkInfo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkInfo()
    }
}
