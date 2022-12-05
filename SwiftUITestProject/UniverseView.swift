//
//  UniverseView.swift
//  SwiftUITestProject
//
//  Created by Филипп Степанов on 06.12.2022.
//

import Foundation
import SwiftUI

struct UniverseView: View {
    
    @State private var selectedUniverse: Universe?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Какую киновселенную вы предпочитаете?")
                .modifier(Title())
            Button("Marvel") {
                selectedUniverse = Universe(name: "Вы выбрали Marvel")
            }
            Button("DC") {
                selectedUniverse = Universe(name: "Вы выбрали DC")
            }
            Text(selectedUniverse?.name ?? "")
                .modifier(Regular())
        }
    }
    
}

struct Universe: Identifiable {
    
    var id: String { name }
    let name: String
    
}
