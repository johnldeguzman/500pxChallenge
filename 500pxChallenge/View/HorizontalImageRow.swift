//
//  HorizontalImageRow.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-22.
//

import SwiftUI

struct HorizontalImageRow: View {
    var images: [URL]
    
    var body: some View {
        HStack(spacing: 0){
            ForEach(images, id: \.self) { image in
                AsyncImage(url:image, placeholder: Text("..."))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 80, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .aspectRatio(1.3, contentMode: .fit)
                    .clipped()
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                
            }
        }
    }
}

struct HorizontalImageRow_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalImageRow(images: [testURL, testURL, testURL])
    }
}
