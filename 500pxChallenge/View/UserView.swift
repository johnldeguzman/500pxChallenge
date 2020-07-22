//
//  UserView.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-22.
//

import SwiftUI

struct UserView: View {
    var title: String
    var subtitle: String
    var url: String?
    
    var body: some View {
        HStack {
            if let url = URL(string: url ?? "") {
                AsyncImage(url: url, placeholder: Color.black)
                    .frame(width: 40, height: 40, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    
                    
            }
            
            VStack(alignment: .leading) {
                Text(title)
                    .bold()
                Text(subtitle)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(title: "Jack", subtitle: "Jack Jones", url: "https://drscdn.500px.org/user_avatar/4154016/q%3D85_w%3D300_h%3D300/v2?webp=true&v=1&sig=b0cdb71dd90892c3dc4fb951ce0e0978d3adf7461e5c1ab0901174e2627bc399")
    }
}
