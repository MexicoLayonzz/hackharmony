//
//  BarraDeMenu.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//
import SwiftUI

struct BarraDeMenu: View {
    @Binding var IndexSeleccionado: Int
    let iconos = ["house", "book", "briefcase", "cross"]

    var body: some View {
        HStack {
            ForEach(iconos.indices, id: \.self) { index in
                Button(action: {
                    IndexSeleccionado = index
                }) {
                    Image(systemName: iconos[index])
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(index == IndexSeleccionado ? .white : Color(.blue))
                            .padding(10) as! Color
                }
            }
        }
        .padding(.vertical, 10)
        .background(Color.black.edgesIgnoringSafeArea(.bottom))
    }
}


