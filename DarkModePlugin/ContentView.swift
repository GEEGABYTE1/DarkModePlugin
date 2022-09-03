//
//  ContentView.swift
//  DarkModePlugin
//
//  Created by Jaival Patel on 2022-09-02.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.blue
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text("Landing Page 🌈")
            }
            
            
        }
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
