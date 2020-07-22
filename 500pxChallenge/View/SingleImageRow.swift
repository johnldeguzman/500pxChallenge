//
//  SingleImageRow.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-21.
//

import SwiftUI

struct SingleImageRow: View {
    var url: URL
    var user: User
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            
        
            VStack {
           
                AsyncImage(url: url, placeholder: Text(" "))
                    .scaledToFit()
                    .clipped()
                    .border(Color.black, width: 2)
                }
            UserView(title:user.username, subtitle:user.fullname, url: user.displayPicture)
                .padding(EdgeInsets(top: 10, leading: 7, bottom: 10, trailing: 7))
                .background(Color.white.opacity(0.3))
            
                
            }
        }
}
        

struct SingleImageRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleImageRow(url: testURL, user: testUser)
    }
}

var testURL = URL(string: "https://drscdn.500px.org/photo/1019134515/q%3D50_h%3D450/v2?sig=0e61002eea0966ef5a0b12ab282d5a8de061495e28324e0662d96ae2bffe9ea3")!

var testUser = User(id: 123, username: "madIshALw", displayPicture: "https://drscdn.500px.org/user_avatar/19128683/q%3D85_w%3D300_h%3D300/v2?webp=true&v=18&sig=d772f262a59021a38fe130da0f846a0b66b97e334607ec9ae931c9159ff9d797", fullname: "Mack Strong")
