//
//  SingleImageRow.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-21.
//

import SwiftUI

struct SingleImageRow: View {
    var url: URL
    
    var body: some View {
      
        VStack {
           
                AsyncImage(url: url, placeholder: Text(" "))
                    .scaledToFit()
                    .clipped()
                    .border(Color.black, width: 2)
                }
            }
        }
        

struct SingleImageRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleImageRow(url: testURL)
    }
}

var testURL = URL(string: "https://drscdn.500px.org/photo/1019134515/q%3D50_h%3D450/v2?sig=0e61002eea0966ef5a0b12ab282d5a8de061495e28324e0662d96ae2bffe9ea3")!
