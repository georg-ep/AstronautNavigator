//
//  ScrollView.swift
//  MoonShot
//
//  Created by George Patterson on 14/02/2021.
//

import SwiftUI

/*
 
 Scroll views can be created vertically, horizontally or in both ways.
 
 Scrollviews are used for arbittrary data (any type of data)
 
 To make the whole area scrollable add the .frame(maxWidth: .infinity) modifier
 
 One differece between a list and scrollviwe is that the scrollview inits all the CustomText straight away whereas List inits the text as you use them. 
 
 */

struct CustomText: View {
    var text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) { //this is done on every intiialisation of a new CustomText struct
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ScrollViewInfo: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(0..<101) {
                    CustomText("Item \($0)")
                }
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewInfo()
    }
}
