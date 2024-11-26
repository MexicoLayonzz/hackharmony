//
//  VistaPrincipal.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//
import SwiftUI

struct VistaPrincipal: View {
    let IndexSeleccionado: Int

    var body: some View {
        ZStack {
            contenidoParaIndice(IndexSeleccionado)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }

    @ViewBuilder
    private func contenidoParaIndice(_ index: Int) -> some View {
        switch index {
        case 0:
            ContentView()
        case 1:
            ContentView()
        case 2:
            ContentView()
        case 3:
            ContentView()
        default:
            ContentView()
        }
    }
}
