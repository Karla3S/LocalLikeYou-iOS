//
//  ContentView.swift
//  LocalLikeYou
//
//  Created by Karla Soto on 12/6/23.
//

import SwiftUI
import UIKit

// Wrap your ViewController in a SwiftUI ViewRepresentable
struct MapboxViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Update the view controller if needed
    }
}


struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            VStack {
                
                Spacer()
                
                // Company Logo
                Image("HFLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                
                // App Name
                Text("Local Like You")
                    .font(Font.custom("Helvetica", size: 35)).bold()
                    .foregroundColor(Color(red: 0/255, green: 101/255, blue: 164/255))
                
                Spacer()
                
                NavigationLink(destination: MapboxViewControllerWrapper()) {
                                   Text("Get Started")
                                       .foregroundColor(.white)
                                       .padding()
                                       .background(Color(red: 0/255, green: 101/255, blue: 164/255))
                                       .cornerRadius(10)
                               }
                
                Spacer()
                
                
            }
            .background(Color(red: 255/255, green: 255/255, blue: 255/255)
                .edgesIgnoringSafeArea(.all))
            
            
        }
    }
}

#Preview {
    ContentView()
}

