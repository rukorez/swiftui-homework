//
//  SettingView.swift
//  SwiftUITestProject
//
//  Created by Филипп Степанов on 06.12.2022.
//

import Foundation
import SwiftUI

struct SettingView: View {
    
    @State private var isEnabled = true
    @State private var isDisable = false
   
       var body: some View {
           NavigationView {
               Form {
                   Section {
                       Toggle(isOn: $isEnabled) {
                           Text("Enable")
                               .foregroundColor(.blue)
                               .modifier(Regular())
                       }
                       Toggle(isOn: $isDisable) {
                           Text("Disable")
                               .foregroundColor(.red)
                               .modifier(Regular())
                       }
                   }
               } .navigationTitle("Settings")
           }
       }
    
}
