//
//  AnnouncementView.swift
//  LocalLikeYou
//
//  Created by Karla Soto on 12/6/23.
//

import SwiftUI

struct Announcement: Identifiable {
    let id = UUID()
    let title: String
    let content: String
}

struct AnnouncementListView: View {
    
    let announcements: [Announcement] = [
        Announcement(title:"Local Like You", content: "New App coming to Harbor Foods")
        // Add more announcements as needed
    ]

    var body: some View {
        NavigationView {
            List(announcements) { announcement in
                NavigationLink(destination: AnnouncementDetail(announcement: announcement)) {
                    VStack(alignment: .leading) {
                        Text(announcement.title)
                            .font(.headline)
                        Text(announcement.content)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Announcements")
        }
    }
}

struct AnnouncementDetail: View {
    let announcement: Announcement

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(announcement.title)
                .font(.title)
                .fontWeight(.bold)

            Text(announcement.content)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding()
        .navigationBarTitle("", displayMode: .inline)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementListView()
    }
}
