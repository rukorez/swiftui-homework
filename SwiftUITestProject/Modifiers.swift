//
//  Modifiers.swift
//  SwiftUITestProject
//
//  Created by Филипп Степанов on 30.11.2022.
//

import SwiftUI

struct Title: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
}

struct Regular: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.black)
    }
    
}
