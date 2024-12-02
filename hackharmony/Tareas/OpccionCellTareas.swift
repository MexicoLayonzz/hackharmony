//
//  OpccionCellTareas.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//

import Foundation
import SwiftUI

struct OpcionesCellTareas:View {
    let optionT :opccionesTareas
    @State private var isChecked: Bool = false
    static let colors = [Color.blue.opacity(0.15), Color.pink.opacity(0.15)]
    
    var body: some View {
        HStack{
            VStack{
                Text(optionT.titulo)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.white)
                Text(optionT.texto)
                    .foregroundStyle(Color.white)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                
                Spacer()
            }
            Spacer()
            Button(action: {
                        isChecked.toggle() // Cambia el estado al tocar
                    }) {
                        HStack {
                            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(isChecked ? .blue : .gray)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 35).fill(Color(hex: 0x323964)))
    }
}
