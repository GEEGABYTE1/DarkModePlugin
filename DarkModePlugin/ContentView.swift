//
//  ContentView.swift
//  DarkModePlugin
//
//  Created by Jaival Patel on 2022-09-02.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = AppColor.backgroundLight
    var body: some View {
        
        TabView {
            ZStack {
                backgroundColor.ignoresSafeArea()
                VStack {
                    Text("Landing Page 🌈")
                        .font(.title)
                        .padding()
                }
                
                
            }
            .tabItem{
                Label("Landing", systemImage:"house")
            }
            ZStack {
                backgroundColor.ignoresSafeArea()
                VStack {
                    Text("Settings")
                        .font(.title)
                        .padding()
                }
                
            }
            .tabItem {
                Label("Settings", systemImage: "gear")
            }

            
        }
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
