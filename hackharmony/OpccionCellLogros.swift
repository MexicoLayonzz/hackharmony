//
//  OpccionCellLogros.swift
//  hackharmony
//
//  Created by CEDAM27 on 25/11/24.
//

import Foundation
import SwiftUI

struct OpcionesCell:View {
    let option :opccionesLogros
    static let colors = [Color.blue.opacity(0.15), Color.pink.opacity(0.15)]
    
    var body: some View {
        VStack{
            Image(option.imagenNombre)
                .resizable()
                .frame(width: 90, height: 90)
            Text(option.titulo)
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text(option.texto)
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.vertical)
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 35).fill(Color.blue))
    }
}

