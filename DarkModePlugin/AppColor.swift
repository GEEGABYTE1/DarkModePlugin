//
//  AppColor.swift
//  DarkModePlugin
//
//  Created by Jaival Patel on 2022-09-02.
//

import SwiftUI

struct RelativeColor {
    static let backgroundDark = Color(red: 0/255, green: 0/255 , blue: 0/255)
    static let foregroundDark = Color(red: 255/255, green: 255/255, blue: 255/255)
    static let backgroundLight = Color(red: 245/255, green:224/255, blue: 235/255)
    static let foregroundLight = Color(red: 0/255, green: 0/255 , blue: 0/255)
}

class AppColor: ObservableObject {
    @Published var backgroundColor = RelativeColor.backgroundLight
    @Published var textColor = RelativeColor.foregroundLight
    @Published var DarkisOn: Bool = false
    
    
    func changeColor () {
        if DarkisOn == true {
            backgroundColor = RelativeColor.backgroundDark
            textColor = RelativeColor.foregroundDark
            
         
        } else {
            backgroundColor = RelativeColor.backgroundLight
            textColor = RelativeColor.backgroundDark
        }
    }
}
