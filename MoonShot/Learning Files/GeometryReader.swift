//
//  GeometryReader.swift
//  MoonShot
//
//  Created by George Patterson on 14/02/2021.
//

import SwiftUI
/*
 
 When we have an image, it auto sizes it to its actual size
 Load an image with Image("name in assets")
 
 Create a frame with .frame(height, width)
 
 .clipped() fits a part of the image to the frame
 
 .resizable() resizes the image to fit the frame
 
 this can distort the image so we may need to add another modifier
 
 .aspectRatio(contentMode: x) x = .fit or .fill
 
 .fit fits the entire image into the frame
 
 .fill fills the frame with no empty parts
 
 these work great for fixed sized images but we want to make it dynamic to fit whicever screen iphone ipad ect
 
 this is where geometryreader comes in
 it provides us with a geometry proxy object to use allowing us to query the environment like how wide or high the screen is.
 
 GeometryReader { geometry in
 
    Image("Example")
     .resizable()
     .aspectRatio(contentMode: .fit)
     .frame(width: geo.size.width)
 
 }
 
 above sets the image to fit any screen width, we can also use geo.size.height for height
 
 */
struct GeometryReaderInfo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderInfo()
    }
}
