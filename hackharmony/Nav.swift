//
//  Nav.swift
//  PlayPlace
//
//  Created by Fernando Aguilar on 25/11/24.
//
import SwiftUI

struct Nav: View {
    @State private var IndexSeleccionado = 0

    var body: some View {
        VStack(spacing: 0) {
            VistaPrincipal(IndexSeleccionado: IndexSeleccionado)
            BarraDeMenu(IndexSeleccionado: $IndexSeleccionado)
        }
    }
}

