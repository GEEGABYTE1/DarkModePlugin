//
//  ContentView.swift
//  DarkModePlugin
//
//  Created by Jaival Patel on 2022-09-02.
//

import SwiftUI

struct ContentView: View {
    
    
    @AppStorage("darkModeStatus") private var darkModeOn: Bool = false
    @StateObject var appColor = AppColor(DarkisOn: false)
    
    
    
    var body: some View {
        
        TabView {
            ZStack {
                appColor.backgroundColor.ignoresSafeArea()
                VStack {
                    Text("Landing Page 🌈")
                        .font(.title)
                        .padding()
                }
                .foregroundColor(appColor.textColor)
                .onAppear {
                    appColor.DarkisOn = darkModeOn
                    appColor.changeColor()                }
                
                
            }
            .tabItem{
                Label("Landing", systemImage:"house")
            }
            ZStack {
                appColor.backgroundColor.ignoresSafeArea()
                VStack {
                    Text("Settings")
                        .font(.title)
                        .padding()
                        .foregroundColor(appColor.textColor)
                    
                    Toggle("Dark Mode", isOn: $darkModeOn).onChange(of: darkModeOn) {
                        value in
                        if darkModeOn == true {
                            appColor.DarkisOn = value
                            appColor.changeColor()
                        }
                        
                        
                    }
                        .padding()
                        .foregroundColor(appColor.textColor)
                    
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
