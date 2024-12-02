//
//  HeaderTareas.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//

import Foundation
import SwiftUI

struct hederTareas: View {
    var body: some View {
        ZStack(alignment: .top) {
            // Fondo azul que ocupa el espacio del header
            Color(hex: 0x323964)
                .edgesIgnoringSafeArea(.top)
            
            // Contenido del header
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Tareas")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white) // Texto visible sobre fondo azul
                    Text("Vas muy bien esta semana")
                        .fontWeight(.bold)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white.opacity(0.8)) // Más tenue
                }
                Spacer()
                Image("1")
                    .resizable()
                    .padding()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(hex: 0x323964), lineWidth: 4))
            }
            .padding()
        }
        .frame(height: 100)
    }
}
