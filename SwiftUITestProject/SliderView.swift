//
//  SliderView.swift
//  SwiftUITestProject
//
//  Created by Филипп Степанов on 06.12.2022.
//

import Foundation
import SwiftUI

struct SliderView: View {
    
    @State private var percents = 100.0
    @State private var isEditing = false
    
    var body: some View {
        VStack{
            Slider(value: $percents, in: 0...100) { editing in
                isEditing = editing
            }
            Text("\(Int(percents))")
                .foregroundColor(percents > 90 ? .green : .red)
                .modifier(Regular())
        } .padding(20)
    }
    
}
