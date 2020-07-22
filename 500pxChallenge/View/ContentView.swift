//
//  ContentView.swift
//  500pxChallenge
//
//  Created by John De Guzman on 2020-07-17.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: PhotoStore = PhotoStore()
   
    @State private var page = 1
    
    var body: some View {
        NavigationView {
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 0) {
                        ForEach (store.photo) { photoItem in
                            if let url = URL(string: photoItem.imageURL.first ?? "") {
                                NavigationLink(destination: PhotoDetailView(url: url, user: photoItem.user, title: photoItem.name, subtitle: photoItem.description)) {
                                    SingleImageRow(url: url, user: photoItem.user)
                                        .onAppear{
                                            if store.photo.isLastItem(photoItem) {
                                                page += 1
                                                store.callPhotos(page: page)
                                            }
                                    }
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }
                    }.padding(.bottom, 140)
                }.navigationBarTitle("Photos", displayMode: .inline)
            }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


