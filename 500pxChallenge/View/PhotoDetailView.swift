//
//  PhotoDetailView.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-22.
//

import SwiftUI

struct PhotoDetailView: View {
    var url: URL
    var user: User
    var title: String
    var subtitle: String
    
    
    var body: some View {
        ScrollView {
            
        VStack(alignment: .leading) {
            
            UserView(title: user.username, subtitle: user.fullname, url: user.displayPicture)
                .padding(EdgeInsets(top: 15, leading: 7, bottom: 0, trailing: 0))
            
            VStack(alignment: .center) {
                AsyncImage(url: url, placeholder: Text("  "))
                    .aspectRatio(contentMode: .fit)
                    .background(Color.black)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            }
            
            Text(title)
                .bold()
                .padding(EdgeInsets(top: 0, leading: 7, bottom: 0, trailing: 7))
            Text(subtitle)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 0, leading: 7, bottom: 0, trailing: 7))
            
          Spacer()
        }
    }
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(url: URL(string:"https://drscdn.500px.org/photo/1019182945/q%3D50_h%3D450/v2?sig=2c841f2396357708020f8c247cb29a2ce07a472ca2563aacd88925c7c8179664")!, user: User(id: 123, username: "madIshALw", displayPicture: "https://drscdn.500px.org/user_avatar/19128683/q%3D85_w%3D300_h%3D300/v2?webp=true&v=18&sig=d772f262a59021a38fe130da0f846a0b66b97e334607ec9ae931c9159ff9d797", fullname: "Mack Strong" ), title: "Sunshine", subtitle: "Wonderful Time of the year")
    }
}
